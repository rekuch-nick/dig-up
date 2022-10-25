if(instance_number(objScreen) > 0){ return; }







if(!pointOnGround(x, y+1)){ 
	ySpeed += grav; 
	if(floatFlip && irandom_range(1, 15) == 1){ image_xscale *= -1; }
}


if(ySpeed < 1){
	for(var i=0; i<abs(ySpeed); i++){
		if(!pointInBlock(x, y-1)){ y --; } else {
			//ySpeed = 0;
		}
	} 
}

if(ySpeed > 1){
	for(var i=0; i<abs(ySpeed); i++){
		if(!pointOnGround(x, y+1)){ 
			y ++; 
		} else {
			ySpeed = 0;
		}
	}
}

if(xSpeed != 0){
	var dir = xSpeed > 0 ? 1 : -1;
	for(var i=0; i<abs(xSpeed); i++){
		if(!pointInBlock(x+dir, y)){
			x += dir;
		}
	}
	
	xSpeed = xSpeed > 0 ? xSpeed - 1 : xSpeed + 1;
}

if(rot){
	image_xscale += 1.2 * rotDir;
	if(image_xscale < -4){ rotDir = 1; }
	if(image_xscale > 4){ rotDir = -1; }
}

setTileSpot();