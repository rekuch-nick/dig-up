if(instance_number(objScreen) > 0){ return; }


if(waitCD > 0){ waitCD --; } else {

	x += xSpeed;
	y += ySpeed;
	ySpeed += grav;
}


setCenterTileSpot();

if(xSpot != xFirst || ySpot != yFirst){
	if(ww.bmap[xSpot, ySpot] != noone){
		destroy = true;
	}
}

if(abs(ySpot - pc.ySpot) > 20){ destroy = true; }
if(ySpot > 88){ destroy = true; }


if(destroy){
	instance_create_depth(x, y-30, depth, objEffSparkYellow);
	instance_create_depth(x, y-10, depth, objEffSparkYellow);
	instance_create_depth(x, y+10, depth, objEffSparkYellow);
	instance_create_depth(x, y+30, depth, objEffSparkYellow);
	instance_destroy();
}