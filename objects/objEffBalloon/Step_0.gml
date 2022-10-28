




disFromPlayer += 1.5;
angle += 10;

x = (pc.x+32) + lengthdir_x(disFromPlayer, angle) - sprite_width/2;
y = (pc.y-32) + lengthdir_y(disFromPlayer, angle) - sprite_height/2;

with(objMob){ instance_destroy(); }
with(objShot){ instance_destroy(); }

if(disFromPlayer > room_width / 2){
	instance_destroy();
}