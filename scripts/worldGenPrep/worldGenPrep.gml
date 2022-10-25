function worldGenPrep(){
	
	for(var a=0; a<17; a++){ for(var b=0; b<102; b++){
		ww.bgmap[a, b] = noone;
		ww.bmap[a, b] = noone;
		ww.bdammap[a, b] = 0;
		ww.bymap[a, b] = 0;
	}}
	
	with(objPup){ instance_destroy(); }
	with(objEffect){ instance_destroy(); }
	with(objMob){ instance_destroy(); }

}