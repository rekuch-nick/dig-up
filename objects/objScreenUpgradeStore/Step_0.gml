

if(icd > 0){ icd --; } else if(pc.yInput != 0){
	
	cursor += pc.yInput;
	if(cursor < 0){ cursor = cursorMax - 1; }
	if(cursor >= cursorMax){ cursor = 0; }
	icd = 6;
}


with(objCursor){ y = 300 + other.cursor*80; }

if(pc.pressedStart || pc.pressedJump){
	
	
	
	if(cursor == 0){
		
		with(objCursor){ instance_destroy(); } instance_destroy();
	} else {
		
		if(pc.coins >= cost[cursor]){
			pc.coins -= cost[cursor];
			
			if(shop[cursor] == "+1 Health Box"){ pc.hpMax ++; pc.hp ++; }
			
			if(shop[cursor] == "+1 Bag Space"){ pc.bagMax ++; }
			
			if(shop[cursor] == "Random Suit"){ 
				var old = pc.sprite_index;
				do {
					pc.sprite_index = choose(imgPlayerCarpet, imgPlayerTail, imgPlayerTall);
				} until (pc.sprite_index != old);
			}
			
			
			
			
			
			with(objCursor){ instance_destroy(); } instance_destroy();
		}
		
		
		
	}
}