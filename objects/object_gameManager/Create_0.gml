/// @description Insert description here
// You can write your code in this editor
randomize();

depth=0;

text="Press the spacebar to start!";
winningColor=c_white;
textOpacity=0;

overlayOpacity=0;
textOpacity=0;

var tune=instance_create_depth(x,y,0,object_tuning);

currentPlatforms=0;
minPlatforms=tune.minPlatforms;
maxPlatforms=tune.maxPlatforms;

platformFreq=tune.platformFreq;
frameNumber=0;

recWidth=tune.recWidth;
recHeight=tune.recHeight;

aliensToKill=tune.aliensToKill;
aliensKilled=0;
aliensCreated=0;
timeLimit=tune.timeLimit*room_speed;
timer=0;

dieScore=tune.dieScore;
maxHover=tune.maxHover;

startPosition=tune.startPosition;

gameState="startMenu";

show_debug_message("game manager created");

/*pl1=instance_create_depth(room_width/4,room_height,0,object_player1);
pl2=instance_create_depth(room_width*3/4,room_height,0,object_player2);*/

scores[0]=0;
scores[1]=0;

audio_play_sound(sound_city,1,true);


hoverPoints[0]=0;
hoverPoints[1]=0;

draw_set_halign(fa_center);

timerX=tune.timerX;
timerY=tune.timerY;
scoreX=tune.scoreX;
scoreY=tune.scoreY;
aliensX=tune.aliensX;
aliensY=tune.aliensY;
recX=tune.recX;
recY=tune.recY;
timerColor1=tune.timerColor1;
timerColor2=tune.timerColor2;
score1Color1=tune.score1Color1;
score1Color2=tune.score1Color2;
score2Color1=tune.score2Color1;
score2Color2=tune.score2Color2;
aliensColor1=tune.aliensColor1;
aliensColor2=tune.aliensColor2;

show_debug_message("still ok");

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

instance_destroy(tune);