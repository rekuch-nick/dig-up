setTileSpot();
if(instance_number(objScreen) > 0){ return; }


lastGround = onGround;
onGround = false;

pushingDownTime = clamp(pushingDownTime - 1, 0, pushingDownTime);
if(irandom_range(0, 99) < pushingDownChance && pc.y - 5 > y){ pushingDownTime = 2; }

if(!pointOnGround(x, y+1)){ 
	
	ySpeed += grav; 
	
	if(lastGround && turnOnFall){
		xDir *= -1;
		x += moveSpeed * xDir;
		ySpeed -= grav;
	}
		
	} else {
	onGround = true;
	
	if(irandom_range(0, 99) < jumpChance){ ySpeed = jumpPower; }
}




xSpeed = moveSpeed * xDir;
if(xSpeed > 0 && image_xscale < 0){ image_xscale *= -1; }
if(xSpeed < 0 && image_xscale > 0){ image_xscale *= -1; }



if(ySpeed < 1){
	for(var i=0; i<abs(ySpeed); i++){
		if(!pointInBlock(x, y-1)){ y --; } else {
			ySpeed = 0;
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
		} else {
			if(turnOnBump){ xDir *= -1; }
			if(irandom_range(0, 99) < turnChance){ xDir *= -1; }
			if(wallJump && onGround){ ySpeed = jumpPower; }
			break;
		}
	}
	
	xSpeed = xSpeed > 0 ? xSpeed - 1 : xSpeed + 1;
}



if(gridHunt != 0){
	if(pc.x > x && image_xscale < 0){ image_xscale *= -1; }
	if(pc.x < x && image_xscale > 0){ image_xscale *= -1; }
	
	
	if(xHunt == 0 && yHunt == 0){
		if(choose(true, false)){
			xHunt = 0;
			if(x < pc.x){ xHunt = 64; }
			if(x > pc.x){ xHunt = -64; }
		} else {
			yHunt = 0;
			if(y < pc.y){ yHunt = 64; }
			if(y > pc.y){ yHunt = -64; }
		}
	} else {
		if(xHunt < 0){ x -= gridHunt; xHunt += gridHunt; }
		if(xHunt > 0){ x += gridHunt; xHunt -= gridHunt; }
		if(yHunt < 0){ y -= gridHunt; yHunt += gridHunt; }
		if(yHunt > 0){ y += gridHunt; yHunt -= gridHunt; }
	}
	
	
}









if(y >= 5800 || hp < 1){
	
	if(y < 5800){
		for(var i=0; i<coins; i++){
			instance_create_depth(x, y, -5000, objCoin);
		}
	}
	
	instance_create_depth(x, y, -6000, deathImage);
	instance_destroy();
}


