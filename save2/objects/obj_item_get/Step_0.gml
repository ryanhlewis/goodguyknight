image_alpha = a;

if (fade_in){
	if (a < 1) a += rate;
	if (a = 1 && image_index > image_number*.75) draw_item = true;
}

if (fade_out){
	a -= rate/2;
	if (a <= 0) instance_destroy();
}



if (item_a >= 1 && (keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1))){
	fade_in = false;
	fade_out = true;
	audio_sound_gain(snd_weow,0,500);
}