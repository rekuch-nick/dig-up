


if(!set){
	

var xm = irandom_range(0, dis);
var ym = dis - xm;

xm *= choose(1, -1);
ym *= choose(1, -1);

while(y + ym > yStart){ym --; }

x += xm;
y += ym;
	
if(!collision_circle(x, y, 16, objBalloon, true, true)){
	set = true;
	xx = x; yy = y;
	
} else{
	dis ++; 
}
	
	
	
	
	
} else {
	
	if(irandom_range(0, 30) == 1){
		x = xx + irandom_range(-1, 1);
		y = yy + irandom_range(-1, 1);
	}
	
}