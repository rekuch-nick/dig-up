





draw_text_color(310, 740, "$" + string(coins), c_yellow, c_yellow, c_yellow, c_yellow, 1);

//draw_text_color(460, 740, string(ySpot), c_lime, c_lime, c_lime, c_lime, 1);




for(var i=0; i<bagMax; i++){
	var a = 662 + i*42;
	var b = 720;
	draw_set_alpha(.7);
	draw_sprite_stretched(imgBagSlot, 0, a, b, 42, 42);
	draw_set_alpha(1);
	if(bag[i] != noone){
		draw_sprite_stretched(bag[i], 0, a, b, 42, 42);
	}
}





for(var i=1; i<=hpMax; i++){
	var a = 12 + (i-1)*21;
	var b = 720;
	var f = hp >= i ? 0 : 2;
	if(hp > (i-1) && hp < i ){ f = 1; }
	
	draw_sprite_stretched(imgHPSlot, f, a, b, 21, 42);
	
}