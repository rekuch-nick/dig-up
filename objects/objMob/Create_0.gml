setTileSpot();
image_xscale = 4; image_yscale = 4;

onGround = false;
xSpeed = 0; ySpeed = -10; grav = 1;
moveSpeed = 2;


xDir = choose (-1, 1);
turnOnBump = true;
turnChance = 0;
turnOnFall = false;

wallJump = false;
jumpChance = 0;
jumpPower = -14;

bumpPower = .5;
bumpPush = 10;

pushingDownTime = 0;
pushingDownChance = 10;

passWall = false;
gridHunt = 0;
xHunt = 0;  yHunt = 0;


hp = 3;
coins = irandom_range(1, 3);

deathImage = objEffMob;