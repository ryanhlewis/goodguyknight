if (finale = 3){
	if (flicker < 95) flicker += .01;
	fade_counter += 1/room_speed;
	if (random(100) < flicker && fade < 1){
		audio_sound_pitch(snd_other,random_range(.5,1.5));
		audio_play_sound(snd_other,0,true);
		shader_set(shd_red);
		obj_witch.sprite_index = spr_witch_tentacles;
	}
	else{
		shader_reset();
		if (audio_is_playing(snd_other)) audio_stop_sound(snd_other);
		sprite_reset_counter += 1/room_speed;
	}
}

if (sprite_reset_counter > .15){
	obj_witch.sprite_index = spr_interior;
	sprite_reset_counter = 0;
}

if (fade_counter > 8){
	if (fade < 1) fade += .03;
	draw_set_alpha(fade);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	if (fade >= 1){
		obj_player.can_move = false
		if (!instance_exists(obj_win_text)){
			instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,-500,obj_win_text);
		}
	}
}