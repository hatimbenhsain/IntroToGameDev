/// @description Insert description here
// You can write your code in this editor
var tune=instance_create_depth(x,y,0,object_tuning);

show_debug_message("trouble with drawing?");
draw_text_color(room_width*0.1,room_height*0.025+camera_get_view_y(view_camera[0]),string(scores[0]),$592BEF,$592BEF,$3B08E0,$3B08E0,1);
draw_text_color(room_width*0.9,room_height*0.025+camera_get_view_y(view_camera[0]),string(scores[1]),$F26522,$F26522,$E5330B,$E5330B,1);


draw_set_color($3B08E0);
draw_rectangle(room_width*0.05,room_height*0.125+camera_get_view_y(view_camera[0]),room_width*0.05+recWidth*hoverPoints[0]/tune.maxHover,room_height*0.125+camera_get_view_y(view_camera[0])+recHeight,false);
draw_set_color($E5330B);
draw_rectangle(room_width-room_width*0.05,room_height*0.125+camera_get_view_y(view_camera[0]),room_width-room_width*0.05-recWidth*hoverPoints[1]/tune.maxHover,room_height*0.125+camera_get_view_y(view_camera[0])+recHeight,false);

show_debug_message("no");

instance_destroy(tune);