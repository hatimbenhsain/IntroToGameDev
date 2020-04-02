/// @description Insert description here
// You can write your code in this editor

if(timer/room_speed<1){
	pl1=instance_create_depth(startPosition,room_height,0,object_player1);
}else{
	pl1=instance_create_depth(random_range(0,room_width-sprite_get_width(sprite_player1_jump)),room_height,0,object_player1);
}