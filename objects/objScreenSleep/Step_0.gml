

image_alpha += fadeDir * .03;

yMoon += fadeDir * -20;

if(image_alpha > 1){ fadeDir = -1; }


if(image_alpha < 0){
	pc.hp = pc.hpMax;
	ww.rollWorld = true;
	instance_destroy();
}


