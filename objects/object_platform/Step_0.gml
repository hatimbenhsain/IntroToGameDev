if(col==true){
	if(sprite_index==sprite_platform0_idle || sprite_index==sprite_platform0_spawn){
		sprite_index=sprite_platform0_destroyed;
		image_index=0;
	}else if(sprite_index==sprite_platform1_idle || sprite_index==sprite_platform1_transform){
		sprite_index=sprite_platform1_destroyed;	
		image_index=0;
	}else if(sprite_index==sprite_platform2_idle || sprite_index==sprite_platform2_transform){
		sprite_index=sprite_platform2_destroyed;	
		image_index=0;
	}else if(sprite_index==sprite_platform3_idle || sprite_index==sprite_platform3_transform){
		sprite_index=sprite_platform3_destroyed;	
		image_index=0;
	}else if(image_index>=image_number-1){
		object_gameManager.currentPlatforms-=1;
		instance_destroy(self);
	}
}else if(image_index>=image_number-1){
	if(sprite_index==sprite_platform0_spawn){
		sprite_index=sprite_platform0_idle;	
	}else if(sprite_index==sprite_platform1_transform){
		sprite_index=sprite_platform1_idle;
	}else if(sprite_index==sprite_platform2_transform){
		sprite_index=sprite_platform2_idle;	
	}else if(sprite_index==sprite_platform3_transform){
		sprite_index=sprite_platform3_idle;	
	}
}else if(frameNumber%growthRate==0){
	if(sprite_index==sprite_platform0_idle){
		sprite_index=sprite_platform1_transform;	
	}else if(sprite_index==sprite_platform1_idle){
		sprite_index=sprite_platform2_transform;
	}else if(sprite_index==sprite_platform2_idle){
		sprite_index=sprite_platform3_transform;	
		x-=sprite_width/4;
		y-=sprite_height/4;
	}
	image_index=0;
}
frameNumber++;