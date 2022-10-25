image_xscale = 4; image_yscale = 4;



x += xs;
y += ys;
ys += grav;

image_alpha -= fade;

timeCD --; if(timeCD < 1){
	instance_destroy();
}