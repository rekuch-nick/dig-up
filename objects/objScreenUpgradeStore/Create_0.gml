image_xscale = 4; image_yscale = 4;

cursor = 0;
cursorObject = instance_create_depth(100, 300, depth-1, objCursor);

shop[0] = "Exit"; cost[0] = 0;

if(pc.hpMax >= 12 && pc.bagMax >= 10){
	shop[1] = "Waste your coins";
	cost[1] = 30000;
} else {
	if(pc.hpMax >= pc.bagMax && pc.bagMax < 10){
		shop[1] = "+1 Bag Space";
	} else {
		shop[1] = "+1 Health Box";
	}
	cost[1] = (pc.bagMax + pc.hpMax) * 10;
}

shop[2] = "Random Suit";
cost[2] = 15;

cursorMax = 3;
icd = 4;