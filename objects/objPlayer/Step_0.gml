setTileSpot();
playerInput();

if(instance_number(objScreen) > 0){ return; }
if(ds_list_size(sellEffects) > 0){ 
	var t = ds_list_find_value(sellEffects, 0);
	ds_list_delete(sellEffects, 0);
	instance_create_depth(x, y-64, -6000, t);
	if(ds_list_size(sellEffects) < 1){
		ds_list_destroy(sellEffects);
		sellEffects = ds_list_create();
	}
	return; 
}


jumpsMax = 1;
if(sprite_index == imgPlayerTail){ jumpsMax ++; }


if(hp <= 0){
	y += ySpeed;
	ySpeed = clamp(ySpeed + 1, ySpeed, 32);
	
	//if(coins > 0 && irandom_range(1, 6) == 1){
	//	coins --;
	//	instance_create_depth(x, y+32, -6000, objEffCoin);
	//}
	
	if(y > 102*64){
		y = 100*64;
		hp = .5;
	}
	
	return;
}



cyoteTime = clamp(cyoteTime - 1, 0, cyoteTimeMax);

if(!pointOnGround(x, y) && !pointOnGround(x+bulk, y) && !pointOnGround(x-bulk+1, y) ){
	
	if(cyoteTime > 0 && ySpeed == 0){ } else {
		ySpeed = clamp(ySpeed + 1, -ySpeedMax*4, ySpeedMax);
		if(jumps == jumpsMax){ jumps --; }
	}
	
} else {
	if(ySpeed >= 0){
		jumps = jumpsMax;
		cyoteTime = cyoteTimeMax;
		hoverTime = 0;
	}
	ySpeed = 0;
}

if(ySpeed > 0 && sprite_index == imgPlayerCarpet && hoverTime < 20 && holdingJump){
	ySpeed = -4;
	hoverTime += 3;
}







tryingToPunch = false;
/*
xInput = 0;
if(keyboard_check(vk_right) || keyboard_check(ord("D"))){ 
	if(image_xscale < 0){ image_xscale *= -1; }
	xInput ++; 
}
if(keyboard_check(vk_left) || keyboard_check(ord("A"))){ 
	xInput --; 
	if(image_xscale > 0){ image_xscale *= -1; }
}
*/
if(xInput < 0){ if(image_xscale > 0){ image_xscale *= -1; } }
if(xInput > 0){ if(image_xscale < 0){ image_xscale *= -1; } }

xSpeed = xInput * moveSpeed;



xESpeed = xSpeed;
if(xPush != 0){
	xESpeed = xPush;
	if(xPush > 0){ xPush --; }
	if(xPush < 0){ xPush ++; }
}


var dir = xESpeed > 1 ? 1 : -1;
for(var i=0; i<abs(xESpeed); i++){
	var a = x+((bulk+dir)*dir);
	if(dir == -1){a --; }
	if(!pointInBlock(a, y-1) && !pointInBlock(a, y-height)){
		x += dir;
	} else {
		if(dir == xInput){ tryingToPunch = true; }
		//x -= dir;
		break;
	}
}

pushingDownTime = clamp(pushingDownTime - 1, 0, pushingDownTime);
//if(keyboard_check(vk_down) || keyboard_check(ord("S"))){ 
if(yInput > 0){
	pushingDownTime = 5;
	if(hWarp){ warpCharge ++; }
} else {
	warpCharge = 0;
}


if(warpCharge > 24 && xSpot == 0 && ww.bmap[16, ySpot] == noone){
	pc.x = 16*64 + 32; warpCharge = 0;
}
if(warpCharge > 24 && xSpot == 16 && ww.bmap[0, ySpot] == noone){
	pc.x = 32; warpCharge = 0;
}


//if(keyboard_check_pressed(vk_space) && jumps > 0){
if(pressedJump && jumps > 0){
	jumps --;
	ySpeed = jumpPower;
	if(sprite_index == imgPlayerTall){ ySpeed -= 5; }
	cyoteTime = 0;
}

//if(!keyboard_check(vk_space) && ySpeed < 0){
if(!holdingJump && ySpeed < 0){
	ySpeed = 0;
}


var dir = ySpeed > 1 ? 1 : -1;
for(var i=0; i<abs(ySpeed); i++){
	if(dir > 0){
		if(!pointOnGround(x, y) && !pointOnGround(x+bulk, y) && !pointOnGround(x-bulk+1, y)){
			y += dir;
		} else {
			//ySpeed = 0; 
			break;
		}
	} else if (dir < 0){
		if(!pointInBlock(x, y-height+dir) && !pointInBlock(x+bulk, y-height+dir) && !pointInBlock(x-bulk+1, y-height+dir)){
			y += dir;
		} else {
			if(ySpeed < 0){ ySpeed = 0; }
			
		}
	}
}


if(punchCD > 0){ punchCD --; } else if(tryingToPunch){
	punchCD = punchCDMax;
	punchTime = punchTimeMax;
	damageBlock(xSpot + xInput, ySpot, 1);
}



//if(keyboard_check(vk_up) || keyboard_check(ord("W"))){ 
if(yInput < 0){ 
	if(ySpot == 100 && ySpeed == 0){
		if(xSpot == 10){
			instance_create_depth(0, 0, -8000, objScreenSleep);
		}
		
		if(xSpot == 2){
			sellBagItems();
		}
		
		if(xSpot == 14){
			instance_create_depth(0, 0, -8000, objScreenUpgradeStore);
		}
	}
	
	
}


