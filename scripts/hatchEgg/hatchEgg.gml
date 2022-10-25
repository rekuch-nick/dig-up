function hatchEgg(a, b){
	
	var t = objMob;
	if(b < 70){ t = objMobHop; }
	if(b < 55){ t = objMobStick; }
	
	
	
	
	if(b < 55 && irandom_range(1, 6) == 1){ t = objMobGhost; }
	
	//t = objMobGhost;
	
	ww.bmap[a, b] = noone;
	instance_create_depth(a*64+16, b*64+16, -6000, objEffEgg);
	instance_create_depth(a*64+16, b*64+42, -6000, objEffEgg);
	instance_create_depth(a*64+42, b*64+16, -6000, objEffEgg);
	instance_create_depth(a*64+42, b*64+42, -6000, objEffEgg);
				
	instance_create_depth(a*64+32, b*64+32, -5000, t);

}