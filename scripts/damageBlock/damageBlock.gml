function damageBlock(a, b, d){
	if(!inBounds(a, b)){ return; }
	if(ww.bmap[a, b] == noone){ return; }
	if(!tileCanBreak(ww.bmap[a, b])){ return; }
	
	
	ww.bdammap[a, b] += d;
	
	
	//if(ww.bmap[a, b] == imgCloud && ww.bdammap[a, b] >= 4){
	if(ww.bdammap[a, b] >= 4){
		ww.bmap[a, b] = noone;
		ww.bdammap[a, b] = 0;
		ww.bymap[a, b] = 0;
		
		instance_create_depth(a*64+16, b*64+16, -6000, objEffCloud);
		instance_create_depth(a*64+16, b*64+42, -6000, objEffCloud);
		instance_create_depth(a*64+42, b*64+16, -6000, objEffCloud);
		instance_create_depth(a*64+42, b*64+42, -6000, objEffCloud);
	}
}