plX=random_range(0,room_width-sprite_get_width(sprite_platform0_idle));
plY=random_range(room_height-camera_get_view_height(view_camera[0]),room_height-sprite_get_height(sprite_platform0_idle));
pl=instance_create_depth(plX,plY,-1,object_platform);
with(pl){
	sprite_index=sprite_platform3_idle;
	x-=sprite_width/4;
	y-=sprite_height/4;
	if(place_meeting(x,y,object_platform)){
		col=true;	
		instance_destroy(pl);
		return(true);
	}else{
		col=false;
		x+=sprite_width/4;
		y+=sprite_height/4;
		sprite_index=sprite_platform0_spawn;
		return(false);
	}
}