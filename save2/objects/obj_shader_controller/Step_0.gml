if (global.onyx && obj_player.key_phase_pressed){
	on = !on;
	shader = shd_invert;
}

if (on && shader = shd_invert){
	if (!audio_is_playing(snd_other)) audio_play_sound(snd_other,0,0);
}
else if (audio_is_playing(snd_other)) audio_stop_sound(snd_other);

if(keyboard_check_pressed(vk_f4) || gamepad_button_check_pressed(0,gp_select)){
	fullscreen = !fullscreen;
}


window_set_fullscreen(fullscreen);
