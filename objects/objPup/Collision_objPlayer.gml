if(needsSlot){
	if(!bagHasRoom()){ return; } else {
		
		playerGainItem(sprite_index);
		
		
	}
} else {
	if(sprite_index == imgCoin){ 
		instance_create_depth(x, y, -6000, objEffCoin);
		pc.coins ++; 
	}
	if(sprite_index == imgTallHat){ pc.sprite_index = imgPlayerTall; }
	if(sprite_index == imgCarpet){ pc.sprite_index = imgPlayerCarpet; }
	if(sprite_index == imgLeaf){ pc.sprite_index = imgPlayerTail; }
}




instance_destroy();
