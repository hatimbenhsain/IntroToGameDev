/// @description Insert description here
// You can write your code in this editor


show_debug_message("trouble with drawing?");

draw_set_font(font_score);
draw_sprite_pos(sprite_noise,(frameNumber/10)%4,0,0,room_width,0,room_width,room_height,0,room_height,overlayOpacity);
draw_text_color(room_width/2,room_height*0.8,text,winningColor,winningColor,winningColor,winningColor,textOpacity);

if(gameState=="game"){
	overlayOpacity-=0.025;
	textOpacity-=0.025;
	overlayOpacity=clamp(overlayOpacity,0,0.8);
	draw_set_font(font_timer);
	draw_text_color(timerX,timerY+camera_get_view_y(view_camera[0]),string(floor((timeLimit-timer)/room_speed)),timerColor1,timerColor1,timerColor2,timerColor2,1);
	draw_set_font(font_score);
	draw_set_halign(fa_right);
	draw_text_color(aliensX,aliensY+camera_get_view_y(view_camera[0]),string(aliensToKill-aliensKilled),aliensColor1,aliensColor1,aliensColor2,aliensColor2,1)
	draw_set_halign(fa_center);
	draw_text_color(room_width/2,aliensY+camera_get_view_y(view_camera[0]),"x",aliensColor1,aliensColor1,aliensColor2,aliensColor2,1);
	
	draw_text_color(scoreX,scoreY+camera_get_view_y(view_camera[0]),string(scores[0]),score1Color1,score1Color1,score1Color2,score1Color2,1);
	draw_text_color(room_width-scoreX,scoreY+camera_get_view_y(view_camera[0]),string(scores[1]),score2Color1,score2Color1,score2Color2,score2Color2,1);
	draw_set_color(score1Color1);
	draw_rectangle(recX,recY+camera_get_view_y(view_camera[0]),room_width*0.05+recWidth*hoverPoints[0]/maxHover,room_height*0.125+camera_get_view_y(view_camera[0])+recHeight,false);
	draw_set_color(score2Color1);
	draw_rectangle(room_width-recX,recY+camera_get_view_y(view_camera[0]),room_width-room_width*0.05-recWidth*hoverPoints[1]/maxHover,room_height*0.125+camera_get_view_y(view_camera[0])+recHeight,false);
	draw_sprite_ext(sprite_platform0_idle,0,room_width-aliensX-sprite_get_width(sprite_platform0_idle)*0.8,aliensY-sprite_get_height(sprite_platform0_idle)/1.5,2,2,0,aliensColor1,0.8);
}
else if(gameState=="end"){
	overlayOpacity+=0.025;
	textOpacity+=0.025;
	overlayOpacity=clamp(overlayOpacity,0,0.8);
	textOpacity=clamp(textOpacity,0,0.8);
	if(scores[0]>scores[1]){
		winningPlayer=1;
		winningColor=score1Color1;
	}else{
		winningPlayer=2;	
		winningColor=score2Color1;
	}
	draw_set_font(font_score);
	text="Player "+string(winningPlayer)+" wins!";
	draw_text_color(scoreX,scoreY+camera_get_view_y(view_camera[0]),string(scores[0]),score1Color1,score1Color1,score1Color2,score1Color2,1);
	draw_text_color(room_width-scoreX,scoreY+camera_get_view_y(view_camera[0]),string(scores[1]),score2Color1,score2Color1,score2Color2,score2Color2,1);
}else if(gameState=="gameOver"){
	overlayOpacity+=0.025;
	textOpacity+=0.025;
	overlayOpacity=clamp(overlayOpacity,0,0.8);
	textOpacity=clamp(textOpacity,0,0.8);
	draw_set_font(font_score);
	text="You failed to save the city.";
	draw_text_color(scoreX,scoreY+camera_get_view_y(view_camera[0]),string(scores[0]),score1Color1,score1Color1,score1Color2,score1Color2,1);
	draw_text_color(room_width-scoreX,scoreY+camera_get_view_y(view_camera[0]),string(scores[1]),score2Color1,score2Color1,score2Color2,score2Color2,1);
}else if(gameState=="startMenu"){
	text="Press the spacebar to start!";
	draw_set_font(font_score);
	winningColor=c_white;
	if((frameNumber%200)<100){
		textOpacity=(frameNumber%100)/100;
	}else{
		textOpacity=(100-((frameNumber%100)))/100;
	}
}

show_debug_message("no");

