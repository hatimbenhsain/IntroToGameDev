/// @description Insert description here
// You can write your code in this editor

show_debug_message("trouble with player step?");

show_debug_message(vx);

x+=vx;
vy+=g;



if(dying==false && keyboard_check(buttonLeft)){
	vx-=ax;
}else if(dying==false && keyboard_check(buttonRight)){
	vx+=ax;	
}
vx-=xRes*sign(vx);



if(vx>1){
	image_xscale=1;	
	for(var i=0;i<array_length_1d(sprites);i++){
		sprite_set_offset(sprites[i],0,0);
	}
	if(x+sprite_width/4<=0 || x>=room_width-sprite_width*3/4){
		vx=-vx;	
		audio_play_sound(sound_bounce,1,false);
	}
}else if(vx<-1){
	image_xscale=-1;	
	for(var i=0;i<array_length_1d(sprites);i++){
		sprite_set_offset(sprites[i],-sprite_width,0);
	}
	if(x-sprite_width/4<=0 || x>=room_width-sprite_width*3/4){
		vx=-vx;	
		audio_play_sound(sound_bounce,1,false);
	}
}

if(vy>=0){
	if(sprite_index==spriteJump){
		sprite_index=spriteSwitching;	
		image_index=0;
	}else if(sprite_index==spriteSwitching && image_index>=image_number-1){
		sprite_index=spriteFall;
		image_index=0;
		show_debug_message(sprite_index);
	}
	yToMove=floor(vy);
	var sy=sign(vy);
	while(yToMove!=0){
		var col=false;
		
		var colWith=instance_place(x,y+sy,object_player);
		if(dying==false && colWith!=noone){
			if(dying==false && place_meeting(x,y+sy,colWith) && colWith.dying==false){
				col=true;
				with(colWith){
					dying=true;
				}
				object_gameManager.scores[scoreIndex]++;
				audio_play_sound(sound_hit,1,false);
				show_debug_message("player dead");
				for(var i=0;i<8;i++){
					instance_create_depth(x+sprite_width/2,y+sprite_height,-5,object_star);	
				}
			}
		}	
		
		if(col==false){
			var colWith=instance_place(x,y+sy,object_platform);
			if(dying==false && colWith!=noone){
				if(place_meeting(x,y,colWith)==false && colWith.col==false){
					audio_play_sound(sound_bounce,1,false);
					col=true;	
					colWith.col=true;
				}
			}
		}
		
		if(col==true){
			y+=sy;
			vy=jumpV;
			break;
		}
		else{
			y+=sy;
			yToMove-=sy;
		}
	}
}else{
	if(dying==true){
		vy=0;	
	}else{
		sprite_index=spriteJump;
		y+=vy;
	}
}

if(dying==true){
	sprite_index=spriteDying;
}

vx=clamp(vx,-maxVx,maxVx);

