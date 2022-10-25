function worldGen(){
	
	worldGenPrep();
	
	
	
	for(var a=1; a<5; a++){ ww.bgmap[a, 96] = imgPlat; }
	
	for(var a=9; a<12; a++){ ww.bgmap[a, 98] = imgPlat; }
	for(var a=13; a<16; a++){ ww.bgmap[a, 97] = imgPlat; }
	
	
	for(var a=0; a<17; a++){ ww.bmap[a, 101] = imgGround; }
	for(var b=88; b<101; b++){ ww.bgmap[6, b] = imgVine; }
	for(var a=3; a<12; a++){ ww.bgmap[a, 88] = imgVineH; }
	for(var a=6; a<10; a++){ ww.bgmap[a, 89] = imgVineH; }
	
	
	
	for(var a=0; a<17; a++){ for(var b=0; b<88; b++){
		if(irandom_range(0, 1) == 1){ ww.bmap[a, b] = imgCloud; }
		if(irandom_range(0, 20) == 1){ ww.bmap[a, b] = imgStormCloud; }
		if(irandom_range(0, 30) == 1){ ww.bmap[a, b] = imgEgg; }
	}}
	
	for(var b=0; b<88; b++){
		var a1 = irandom_range(0, 16);
		var a2 = irandom_range(a1, clamp(a1 + 7, a1, 16));
		
		for(var a=a1; a<a2; a++){
			ww.bgmap[a, b] = imgPlat;
		}
		
		b += irandom_range(0, 3);
	}
	
	//treasure
	for(var a=0; a<17; a++){ for(var b=1; b<88; b++){
		if(irandom_range(0, 50) == 1){ 
			ww.bmap[a, b] = imgBox;
			ww.bmap[a, b-1] = noone;
		}
	}}
	
	
	for(var a=0; a<17; a++){ ww.bgmap[a, 86] = imgPlat; }
}