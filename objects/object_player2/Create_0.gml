/// @description Insert description here
// You can write your code in this editor

event_inherited();

spriteFall=sprite_player2_fall;
spriteJump=sprite_player2_jump;
spriteSwitching=sprite_player2_switching;
spriteDying=sprite_player2_dying;
sprites[3]=spriteDying sprites[2]=spriteSwitching sprites[1]=spriteJump sprites[0]=spriteFall;

fireSound=sound_fire2;

for(var i=0;i<array_length_1d(sprites);i++){
	sprite_set_offset(sprites[i],0,0);
}

if(x>=room_width/2){
	image_xscale=-1;	
	for(var i=0;i<array_length_1d(sprites);i++){
		sprite_set_offset(sprites[i],-sprite_width,0);
	}	
}

buttonLeft=vk_left;
buttonRight=vk_right;
buttonUp=vk_up;
buttonDown=vk_down;

scoreIndex=1;