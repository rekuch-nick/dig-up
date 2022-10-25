function bagHasRoom(){
	for(var i=0; i<pc.bagMax; i++){
		if(pc.bag[i] == noone){ return true; }
	}
	
	return false;
}