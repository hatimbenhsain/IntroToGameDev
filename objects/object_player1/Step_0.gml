/// @description Insert description here
// You can write your code in this editor
x+=vx;
vy+=g;

if(dying==false && keyboard_check(ord("A"))){
	vx-=ax;
}else if(dying==false && keyboard_check(ord("D"))){
	vx+=ax;	
}
vx-=xRes*sign(vx);



if(vx>1){
	image_xscale=1;	
	sprite_set_offset(sprite_player1_fall,0,0);
	sprite_set_offset(sprite_player1_jump,0,0);
	sprite_set_offset(sprite_player1_switching,0,0);
	if(x+sprite_width/4<=0 || x>=room_width-sprite_width*3/4){
		vx=-vx;	
		audio_play_sound(sound_bounce,1,false);
	}
}else if(vx<-1){
	image_xscale=-1;	
	sprite_set_offset(sprite_player1_fall,-sprite_width,0);
	sprite_set_offset(sprite_player1_jump,-sprite_width,0);
	sprite_set_offset(sprite_player1_switching,-sprite_width,0);
	if(x-sprite_width/4<=0 || x>=room_width-sprite_width*3/4){
		vx=-vx;	
		audio_play_sound(sound_bounce,1,false);
	}
}

if(vy>=0){
	if(sprite_index==sprite_player1_jump){
		sprite_index=sprite_player1_switching;	
		image_index=0;
	}else if(sprite_index==sprite_player1_switching && image_index>=image_number-1){
		sprite_index=sprite_player1_fall;
		image_index=0;
		show_debug_message(sprite_index);
	}
	yToMove=floor(vy);
	var sy=sign(vy);
	while(yToMove!=0){
		var col=false;
		
		var colWith=instance_place(x,y+sy,object_player2);
		if(dying==false && colWith!=noone){
			if(dying==false && place_meeting(x,y+sy,colWith) && colWith.dying==false){
				col=true;
				with(colWith){
					dying=true;
					if(image_xscale==-1){
						x-=sprite_width;
					}
				}
				global.score1++;
				audio_play_sound(sound_hit,1,false);
				show_debug_message("player 2 dead");
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
		sprite_index=sprite_player1_jump;
		y+=vy;
	}
}

if(dying==true){
	sprite_index=sprite_player1_dying;
}

vx=clamp(vx,-maxVx,maxVx);

