/// @description Insert description here
// You can write your code in this editor
tries=0;

if((gameState=="startMenu" || gameState="gameOver" || gameState="end") && keyboard_check(vk_space)){
	audio_sound_gain(sound_city,0,2000);
	audio_sound_gain(sound_noise,0,2000);
	audio_sound_gain(sound_bgm,1,0);
	audio_play_sound(sound_bgm,1,true);
	gameState="game";
	scores[0]=0;
	scores[1]=0;
	hoverPoints[0]=0;
	hoverPoints[1]=0;
	frameNumber=0;
	aliensKilled=0;
	aliensCreated=0;
	timer=0;
	currentPlatforms=0;
	with(object_platform){
		instance_destroy();
	}
	with(object_player){
		instance_destroy();	
	}
	alarm[0]=(room_speed*0.5);
	alarm[1]=(room_speed*0.5);
	audio_play_sound(sound_fire1,1,true);
	audio_play_sound(sound_fire2,1,true);
	audio_sound_gain(sound_fire1,0,0);
	audio_sound_gain(sound_fire2,0,0);
}else if(gameState=="game"){
	timer++;
	if(aliensKilled>=aliensToKill){
		gameState="end";
		audio_sound_gain(sound_bgm,0,2000);
		audio_play_sound(sound_noise,1,true);
		audio_sound_gain(sound_noise,0,0);
		audio_sound_gain(sound_noise,1,2000);
	}else if(timer>=timeLimit){
		gameState="gameOver";
		audio_sound_gain(sound_bgm,0,2000);
		audio_play_sound(sound_noise,1,true);
		audio_sound_gain(sound_noise,0,0);
		audio_sound_gain(sound_noise,1,2000);
	}
	
	while(currentPlatforms<minPlatforms && aliensCreated<aliensToKill && tries<99){
		if(createPlatform()){
			tries++;
		}else{
			currentPlatforms++;	
			aliensCreated++;
		}
	}

	if(frameNumber%platformFreq==0){
		if(currentPlatforms<maxPlatforms && aliensCreated<aliensToKill){
			while(tries<99){
				if(createPlatform()){
					tries++;	
				}else{
					currentPlatforms++;
					aliensCreated++;
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
		scores[0]-=dieScore;
		audio_play_sound(sound_fall,1,false);
		audio_sound_gain(sound_fire1,0,0);
	}

	if(instance_exists(object_player2) && pl2.y>=room_height*9/8){
		alarm[1]=(room_speed*2);
		for(var i=0;i<8;i++){
			instance_create_depth(pl2.x,room_height,-5,object_star);	
		}
		instance_destroy(pl2);
		scores[1]-=dieScore;
		audio_play_sound(sound_fall,1,false);
		audio_sound_gain(sound_fire2,0,0);
	}
}

frameNumber++;
