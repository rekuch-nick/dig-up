function worldGen(){
	
	worldGenPrep();
	
	var top = 6;//86;
	
	for(var a=1; a<5; a++){ ww.bgmap[a, 96] = imgPlat; }
	
	for(var a=9; a<12; a++){ ww.bgmap[a, 98] = imgPlat; }
	for(var a=13; a<16; a++){ ww.bgmap[a, 97] = imgPlat; }
	
	
	for(var a=0; a<17; a++){ ww.bmap[a, 101] = imgGround; }
	for(var b=88; b<101; b++){ ww.bgmap[6, b] = imgVine; }
	for(var a=3; a<12; a++){ ww.bgmap[a, 88] = imgVineH; }
	for(var a=6; a<10; a++){ ww.bgmap[a, 89] = imgVineH; }
	
	
	
	for(var a=0; a<17; a++){ for(var b=top; b<88; b++){
		if(irandom_range(0, 1) == 1){ ww.bmap[a, b] = imgCloud; }
		if(irandom_range(0, 20) == 1){ ww.bmap[a, b] = imgStormCloud; }
		if(irandom_range(0, 30) == 1){ ww.bmap[a, b] = imgEgg; }
	}}
	
	for(var b=top; b<88; b++){
		var a1 = irandom_range(0, 13);
		var l = irandom_range(4, 10);
		
		for(var a=a1; a<a1+l; a++){
			if(a >= 17){ continue; }
			ww.bgmap[a, b] = imgPlat;
		}
		
		b += irandom_range(0, 1);
	}
	
	//treasure
	for(var a=0; a<17; a++){ for(var b=top; b<88; b++){
		if(irandom_range(0, 50) == 1){ 
			ww.bmap[a, b] = imgBox;
			ww.bmap[a, b-1] = noone;
		}
	}}
	
	
	//ww.bmap[7, top-3] = imgBoxEmpty; ww.bmap[8, top-3] = imgBoxEmpty;
	//ww.bmap[7, top-2] = imgBoxEmpty; ww.bmap[8, top-2] = imgBoxEmpty;
	instance_create_depth(7*64, (top-3)*64, ww.depth-1, objSuperBox);
	
	//for(var a=0; a<17; a++){ ww.bgmap[a, 86] = imgPlat; }
}