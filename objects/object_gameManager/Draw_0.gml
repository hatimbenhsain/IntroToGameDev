/// @description Insert description here
// You can write your code in this editor
show_debug_message("trouble with drawing?");
draw_text_color(room_width*0.1,room_height*0.05+camera_get_view_y(view_camera[0]),string(scores[0]),$592BEF,$592BEF,$3B08E0,$3B08E0,1);
draw_text_color(room_width*0.9,room_height*0.05+camera_get_view_y(view_camera[0]),string(scores[1]),$F26522,$F26522,$E5330B,$E5330B,1);
show_debug_message("no");