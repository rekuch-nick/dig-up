function sellBagItems(){
	
	for(var i=0; i<pc.bagMax; i++){
		var t = pc.bag[i];
		
		if(t == imgGem){
			pc.bag[i] = noone;
			pc.coins += 10;
			ds_list_add(pc.sellEffects, objEffGem);
			for(var ii=0; ii<10; ii++){ ds_list_add(pc.sellEffects, objEffCoin); }
		}
	}
	
}