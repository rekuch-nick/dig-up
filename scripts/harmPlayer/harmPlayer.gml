function harmPlayer(dmg, xPush, range, note){
	
	
	
	if(pc.blinkTime < 1){
		var dis = abs(x - pc.x) + abs(y - pc.y);
		if(dis < range){
			
			pc.xPush = x < pc.x ? bumpPush : -bumpPush;
			pc.blinkTime = pc.blinkTimeMax;
			
			
			
			if(pc.sprite_index != imgPlayer){
				//if(dmg >= 1 || choose(true, false)){
				pc.sprite_index = imgPlayer;
				
			} else {
			
				pc.hp -= bumpPower;
			}
			
		}
	}

}