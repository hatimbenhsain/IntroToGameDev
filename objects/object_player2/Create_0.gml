/// @description Insert description here
// You can write your code in this editor

image_xscale=1;	
sprite_set_offset(sprite_player2_fall,0,0);
sprite_set_offset(sprite_player2_jump,0,0);
sprite_set_offset(sprite_player2_switching,0,0);

jumpV=-10;
vy=-15;
vx=0;
ax=0.5;
xRes=0.2;
maxVx=5;
g=0.25;

dying=false;