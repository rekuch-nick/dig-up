if(instance_number(objScreen) > 0){ return; }

var b1 = clamp(pc.ySpot - 12, 0, 102);
var b2 = clamp(b1 + 26, b1, 102);



//eggs
for(var b=b1; b<b2; b++){ for(var a=0; a<17; a++){ 
	if(ww.bmap[a, b] == imgEgg){
		if(isPointOnScreen(a*64+32, b*64+32)){
			if(irandom_range(1, 90) == 1){
				
				hatchEgg(a, b)
				
				
			}
		}
	}
}}










for(var b=b1; b<b2; b++){ for(var a=0; a<17; a++){ 
	
	if(a == 0 && b == 90){ draw_sprite_stretched(imgBGTown, 0, a*64, b*64, 64*17, 64*12); }
	if(ww.bgmap[a, b] != noone){ draw_sprite_stretched(ww.bgmap[a, b], 0, a*64, b*64, 64, 64); }
	if(ww.bmap[a, b] != noone){ 
		var b3 = b*64 - ww.bymap[a, b];
		if(ww.bymap[a, b] > 0){ ww.bymap[a, b] --; }
		draw_sprite_stretched(ww.bmap[a, b], 0, a*64, b3, 64, 64); 
		
		if(tileCanBreak(ww.bmap[a, b])){
		
			if(ww.bdammap[a, b] > 0 && ww.bdammap[a, b] < 2){
				draw_sprite_stretched(imgCrack1, 0, a*64, b3, 64, 64); 
			} else if (ww.bdammap[a, b] >= 2 && ww.bdammap[a, b] < 3){
				draw_sprite_stretched(imgCrack2, 0, a*64, b3, 64, 64); 
			} else if (ww.bdammap[a, b] >= 3){
				draw_sprite_stretched(imgCrack3, 0, a*64, b3, 64, 64); 
			}
			
		}
		
		if(abs(pc.ySpot - b) <= 6){
			if(ww.bmap[a, b] == imgStormCloud && irandom_range(1, 10) == 1 && instance_number(objShot) < 1){
				instance_create_depth(a*64+32, b*64+32, -6000, objShot);
			}
		}
	}
	
}}