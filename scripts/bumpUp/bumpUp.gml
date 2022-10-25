function bumpUp(a, b){
	if(!inBounds(a, b)){ return; }
	
	
	with(objPup){
		if(a == xSpot && b == ySpot){
			ySpeed -= 10;
		}
	}
	
	with(objMob){
		if(a == xSpot && b == ySpot){
			ySpeed -= 10;
			hp --;
		}
	}
}