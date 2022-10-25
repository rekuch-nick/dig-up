function openBox(a, b){
	
	var t = objPup;
	var n = 1;
	
	
	t = choose(objPup, objPup, objPup, objTallHat, objCarpet, objLeaf, objCoin);
	if(t == objCoin){ n = 10; }
	
	for(var i=0; i<n; i++){
		instance_create_depth(a*64+32, (b)*64-2, -5000, t);
	}

}