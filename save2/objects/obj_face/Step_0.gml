y = scr_ease("easeoutquint", pos_counter) * pos_amplify;
pos_counter += pos_speed/room_speed;



if (keyboard_check_pressed(vk_anykey) ||
	mouse_check_button_pressed(mb_any) ||
	gamepad_button_check_pressed(0,gp_face1) ||
	gamepad_button_check_pressed(0,gp_start)){
	if (pre_spin = false){
		pre_spin = true;
		alarm[0] = 60;
	}
}

if (pre_spin = true && spin = false){
	spin_counter += pre_spin_speed/room_speed;
	image_angle = 360 - scr_ease("easeinoutcubic", spin_counter) * pre_spin_amplify;
	if (image_angle = 360 - pre_spin_amplify){
		spin = true;
		spin_counter = 0;
	}
	
}
else if (pre_spin = true && spin = true){
	spin_counter += spin_speed/room_speed;
	image_angle = 360 - pre_spin_amplify + scr_ease("easeoutelastic", spin_counter) * spin_amplify;

}



