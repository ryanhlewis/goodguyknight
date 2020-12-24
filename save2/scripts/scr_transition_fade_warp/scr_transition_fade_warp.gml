//scr_transition_fade(warp_room,transition_speed,warp_x,warp_y);

if (instance_exists(obj_transition_fade_warp)){
	with (obj_transition_fade_warp) if (fade = -1){
		var new_warp = instance_create_depth(0,0,-600,obj_transition_fade_warp);
	}
	else exit;
}
else var new_warp = instance_create_depth(0,0,-600,obj_transition_fade_warp);


with(new_warp){
    warp_room = argument0;
    transition_speed = argument1;
	warp_x = argument2;
	warp_y = argument3;
}

obj_player.prev_door_x = argument2;
obj_player.prev_door_y = argument3;