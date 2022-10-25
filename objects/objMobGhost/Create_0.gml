event_inherited();

moveSpeed = 0;
grav = 0;
ySpeed = 0;
y += 32;

xDir = choose (-1, 1);
turnOnBump = false;
turnChance = 0;
turnOnFall = true;

wallJump = false;
jumpChance = 0;
jumpPower = -16;

bumpPower = 1.5;
bumpPush = 10;

hp = 1000;
coins = irandom_range(20, 40);

pushingDownChance = 0;

deathImage = objEffMobGhost;

passWall = true;
gridHunt = 2;