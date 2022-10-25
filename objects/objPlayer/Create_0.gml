setTileSpot();
playerInput();
depth = -5001;
xInput = 0;
moveSpeed = 5;
ySpeed = 0;
xSpeed = 0;

xPush = 0;

cyoteTime = 0;
cyoteTimeMax = 5;

jumpPower = -16;
jumps = 0;
jumpsMax = 1;
ySpeedMax = 16;

pushingDownTime = 0;
bulk = 24;
height = 48;

punchTime = 0;
punchTimeMax = 8;
punchCD = 0;
punchCDMax = 12;

bagMax = 4; //
for(var i=0; i<10; i++){
	bag[i] = noone;
}
hpMax = 3;
hp = 3;

coins = 999990;
blinkTime = 0;
blinkTimeMax = 30;

sellEffects = ds_list_create();

warpCharge = 0;
hWarp = true;
hoverTime = 0;