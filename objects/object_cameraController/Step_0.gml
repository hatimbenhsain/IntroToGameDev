var newY=0;
var numPlayers=instance_number(object_player1)+instance_number(object_player2);

if(instance_exists(object_player1)){
	newY+=object_player1.y-camera_get_view_height(view_camera[0])/2;
}
if(instance_exists(object_player2)){
	newY+=object_player2.y-camera_get_view_height(view_camera[0])/2;	
}

if(numPlayers>0){
	newY=newY/numPlayers;
}else{
	newY=room_height-camera_get_view_height(view_camera[0]);
}

cam_y=lerp(camera_get_view_y(view_camera[0]),newY,0.6);
cam_y=clamp(cam_y,0,room_height-camera_get_view_height(view_camera[0]));

x=0;

camera_set_view_pos(view_camera[0],x,cam_y);