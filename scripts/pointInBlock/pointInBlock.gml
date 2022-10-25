function pointInBlock(a, b){
	
	var aa = floor(a / 64);
	var bb = floor(b / 64);
	
	if(!inBounds(aa, bb)){ return true; }
	
	
	////
	if(id == pc && ww.bmap[aa, bb] != noone && b < y && bb < ySpot ){ //xInput == 0){
		ySpeed = 0;
		y ++;
		damageBlock(aa, bb, 1);
		ww.bymap[aa, bb] = 16;
		
		bumpUp(aa, bb-1);
		
		if(ww.bmap[aa, bb] == imgBox){
			ww.bmap[aa, bb] = imgBoxEmpty;
			openBox(aa, bb);
		}
	}
	////
	
	
	
	return ww.bmap[aa, bb] != noone;
}