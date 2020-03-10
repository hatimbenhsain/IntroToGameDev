/// @description Insert description here
// You can write your code in this editor
tries=0;
while(currentPlatforms<minPlatforms && tries<99){
	if(createPlatform()){
		tries++;
	}else{
		currentPlatforms++;	
	}
}

if(frameNumber%platformFreq==0){
	if(currentPlatforms<maxPlatforms){
		while(tries<99){
			if(createPlatform()){
				tries++;	
			}else{
				currentPlatforms++;
				break;	
			}
		}
	}
}

if(instance_exists(object_player1) && pl1.y>=room_height*9/8){
	alarm[0]=(room_speed*2);
	for(var i=0;i<8;i++){
		instance_create_depth(pl1.x,room_height,-5,object_star);	
	}
	instance_destroy(pl1);
	global.score1--;
	audio_play_sound(sound_fall,1,false);
}

if(instance_exists(object_player2) && pl2.y>=room_height*9/8){
	alarm[1]=(room_speed*2);
	for(var i=0;i<8;i++){
		instance_create_depth(pl2.x,room_height,-5,object_star);	
	}
	instance_destroy(pl2);
	global.score2--;
	audio_play_sound(sound_fall,1,false);
}


frameNumber++;