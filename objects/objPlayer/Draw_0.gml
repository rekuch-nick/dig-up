if(ds_list_size(sellEffects) > 0){ return; }

image_index = 0; image_alpha = 1; image_yscale = 4;
if(xInput != 0){ image_index = choose(3, 4, 5, 6); }
if(ySpeed > 0){ image_index = choose(7); }
if(ySpeed < 0){ image_index = choose(8); }
if(punchTime > 0){ image_index = 1; punchTime --; }
if(blinkTime > 0){ image_index = 2; blinkTime --; image_alpha = random_range(.3, 1); }
if(hp <= 0){ image_index = 2; image_alpha = 1; image_yscale = -4;}

draw_self();

if(sprite_index == imgPlayerTall){
	draw_sprite_stretched(imgTallHat, 0, x-30, y-120, 64, 64);
	
}




//draw_text(x-90, y, string(ySpeed));
//draw_text(x-90, y+20, string(xInput));