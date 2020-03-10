/// @description Insert description here
// You can write your code in this editor
randomize();

currentPlatforms=0;
minPlatforms=5;
maxPlatforms=30;
platforms=[];

platformFreq=50;
frameNumber=0;

show_debug_message("game manager created");

pl1=instance_create_depth(room_width/4,room_height,0,object_player1);
pl2=instance_create_depth(room_width*3/4,room_height,0,object_player2);

global.score1=0;
global.score2=0;

draw_set_halign(fa_center);
draw_set_font(font0);

/*application_surface_draw_enable(false);
window_set_fullscreen(true);
global.MonitorW=display_get_width();
global.MonitorH=display_get_height();
global.Xoffset=(global.MonitorW-500)/2;
global.Yoffset=(global.MonitorH-500)/2;
if(global.MonitorW>=1000 && global.MonitorH>=1000){
	surface_resize(application_surface,1000,1000)
	global.Xoffset=(global.MonitorW-1000)/2;
	global.Yoffset=(global.MonitorH-1000)/2;
}*/