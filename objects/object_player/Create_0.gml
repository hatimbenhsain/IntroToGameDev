/// @description Insert description here
// You can write your code in this editor
image_xscale=1;
depth=2;

show_debug_message("creating a player");

var tune=instance_create_depth(x,y,0,object_tuning);

jumpV=tune.jumpV;
vy=tune.startVy;
vx=tune.startVx;
ax=tune.ax;
xRes=tune.xRes;
maxVx=tune.maxVx;
maxVyUp=tune.maxVyUp;
maxVyDown=tune.maxVyDown;
g=tune.g;
maxHover=tune.maxHover;
hoverAcc=tune.hoverAcc;
initBoost=tune.initBoost;

platformScore=tune.platformScore;
killScore=tune.killScore;
dieScore=tune.dieScore

hoverPoints=maxHover;
platformRefill=maxHover/2;
playerRefill=maxHover;

hovering=false;

fireSound=sound_fire1;

instance_destroy(tune);

dying=false;

sprites[3]=0;

spriteFall=0;
spriteJump=0;
spriteSwitching=0;
spriteDying=0;


buttonLeft=0;
buttonRight=0;
buttonUp=0;
buttonDown=0;

scoreIndex=0;



instance_destroy(tune);