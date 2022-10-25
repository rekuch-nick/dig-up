function pointOnGround(a, b){
	
	if(pushingDownTime < 1 && pointOnPlat(a, b+1)){ return true; }
	if(pointInBlock(a, b+1)){ return true; }
	
}