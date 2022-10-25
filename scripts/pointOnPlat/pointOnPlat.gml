function pointOnPlat(a, b){
	
	if(b % 64 == 0){
		var aa = floor(a / 64);
		var bb = floor(b / 64);
		if(inBounds(aa, bb)){
			if(ww.bgmap[aa, bb] != noone){
				return true;
			}
		}
	}
	
	return false;
	
	
	
	
}