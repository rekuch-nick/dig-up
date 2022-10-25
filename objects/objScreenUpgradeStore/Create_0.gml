image_xscale = 4; image_yscale = 4;

cursor = 0;
cursorObject = instance_create_depth(100, 300, depth-1, objCursor);

shop[0] = "Exit"; cost[0] = 0;

if(pc.hpMax < 10){
	shop[1] = "+1 Health Box";
	cost[1] = floor( (pc.hpMax * 15) * (1 + (pc.hpMax / 10)) );
} else {
	shop[1] = "Waste your coins";
	cost[1] = 30000;
}

shop[2] = "Random Suit";
cost[2] = 15;

cursorMax = 3;
icd = 4;