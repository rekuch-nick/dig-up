function playerGainItem(t){
	
	
	
	var slot = bagLowestSlot();
	if(slot == -1){ return; }
	
	pc.bag[slot] = sprite_index;

}