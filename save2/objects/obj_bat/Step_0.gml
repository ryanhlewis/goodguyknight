var grounded = place_meeting(x,y+1,obj_wall);
if (hp < 0) instance_destroy();

if (vspd > 0){
	dir = 1;
}
if (vspd < 0){
	dir = -1;
}
image_yscale = scale*dir;

if (state = "idling"){
	recover_counter += 1/room_speed;
	dir = 1;
	sprite_index = spr_bat;
	if (recover_counter > recover_limit){
		if (abs(x - obj_player.x) < range && state = "idling" && y < obj_player.y){
			state = "dropping";
			audio_play_sound(snd_flapping_bat,0,0);
			recover_counter = 0;
		}
	}
}

if (state = "dropping"){
	sprite_index = spr_bat_dropping;
	vspd += acc;
	return_counter += 1/room_speed;
	if (return_counter > return_limit){
		if (place_meeting(x,y+2,obj_wall)){
			vspd = 0;
			state = "recovery";
			return_counter = 0;
		}
	}
}

if (state = "recovery"){
	sprite_index = spr_bat;
	dir = -1;
	vspd = 0;
	recover_counter += 1/room_speed;
	if (recover_counter > recover_limit){
		state = "returning";
		recover_counter = 0;
	}
}

if (state = "returning"){
	sprite_index = spr_bat_dropping;
	vspd -= acc;
	return_counter += 1/room_speed;
	if (return_counter > return_limit){
		if (place_meeting(x,y-2,obj_wall)){
		vspd = 0;
		state = "idling";
		return_counter = 0;
		}
	}
}
//cOLLISINON
//if (place_meeting(x,y + vspd,obj_wall)){
//	while (!place_meeting(x,y + sign(vspd)*1,obj_wall)){
//		y += sign(vspd)*1;
//	}
//	vspd = 0;
//}
if (place_meeting(x,y,obj_wall)) y = yprevious;


vspd = clamp(vspd,-maxspeed,maxspeed);

y += vspd;