function bagLowestSlot(){
	for(var i=0; i<pc.bagMax; i++){
		if(pc.bag[i] == noone){ return i; }
	}
	
	return -1;
}