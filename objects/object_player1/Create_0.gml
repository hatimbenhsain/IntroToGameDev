/// @description Insert description here
// You can write your code in this editor

event_inherited();

show_debug_message("pl1 created");

spriteFall=sprite_player1_fall;
spriteJump=sprite_player1_jump;
spriteSwitching=sprite_player1_switching;
spriteDying=sprite_player1_dying;
sprites[3]=spriteDying sprites[2]=spriteSwitching sprites[1]=spriteJump sprites[0]=spriteFall;


for(var i=0;i<array_length_1d(sprites);i++){
	sprite_set_offset(sprites[i],0,0);
}

buttonLeft=ord("A");
buttonRight=ord("D");
buttonUp=ord("W");
buttonDown=ord("S");

scoreIndex=0;
