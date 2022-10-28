



x += xs;
y += ys;
ys += grav;

image_alpha -= fade;

timeCD --; if(timeCD < 1){
	instance_destroy();
}