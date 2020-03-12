/// @description Insert description here
// You can write your code in this editor
image_xscale=1;	

show_debug_message("creating a player");

var tune=instance_create_depth(x,y,0,object_tuning);

jumpV=tune.jumpV;
vy=tune.startVy;
vx=tune.startVx;
ax=tune.ax;
xRes=tune.xRes;
maxVx=tune.maxVx;
g=tune.g;

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