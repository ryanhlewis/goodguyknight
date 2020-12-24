if (obj_player.key_up_pressed && !instance_exists(obj_transition_fade_warp)){
	obj_player.x = x;
	scr_transition_fade_warp(warp_room,.03,warp_x,warp_y);
	obj_player.state_locked = true;
	obj_player.state = "transitioning";
}