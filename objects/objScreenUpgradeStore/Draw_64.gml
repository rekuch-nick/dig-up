draw_self();
draw_text_color(310, 740, "$" + string(pc.coins), c_yellow, c_yellow, c_yellow, c_yellow, 1);


for(var i=0; i<cursorMax; i++){
	var c = c_yellow;
	if(pc.coins < cost[i]){ c = c_grey; }
	var s = shop[i];
	draw_text_transformed_color(140, 270 + i*80, s, 3, 3, 1, c, c, c, c, 1);
	if(i > 0){
		var xm = string_width(s) * 3;
		c = c_white
		draw_text_transformed_color(160+xm, 290 + i*80, "$" + string(cost[i]), 1, 1, 0, c, c, c, c, 1);
	}
}