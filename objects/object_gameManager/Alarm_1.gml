/// @description Insert description here
// You can write your code in this editor

if(timer/room_speed<1){
	pl2=instance_create_depth(room_width-startPosition-sprite_get_width(sprite_player2_jump),room_height,0,object_player2);
}else{
	pl2=instance_create_depth(random_range(0,room_width-sprite_get_width(sprite_player2_jump)),room_height,0,object_player2);
}