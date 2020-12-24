var grounded = place_meeting(x,y+1,obj_wall);
if (hp < 0) instance_destroy();

if (hspd > 0){
	dir = 1;
}
if (hspd < 0){
	dir = -1;
}
image_xscale = scale*dir;

if (state = "idling"){
	sprite_index = spr_boar_idling;
	hspd = 0;
	if (place_meeting(x + random_range(60,180)*dir,y, obj_player)){
		audio_sound_pitch(snd_squeal,random_range(.85,1.15));
		audio_play_sound(snd_squeal,0,0);
		state = "spotted";
	}
};

if (state = "spotted"){
	vspd -= jumpspeed;
	state = "charging";
}

if (state = "charging"){
	sprite_index = spr_boar_walking;
	hspd += acc * dir;
	if (place_meeting(x+hspd,y,obj_wall)){
		hspd = 0;
		state = "recovering";
		obj_camera.shake = 3;
		var xp = x +(dir*20);
		var yp = y;
		part_emitter_region(global.ps, global.pe_dust, xp, xp, yp-5, yp+5, ps_shape_ellipse, ps_distr_linear);
		part_emitter_burst(global.ps, global.pe_dust, global.pt_dust, 10);
	}
}

if (state = "recovering"){
	sprite_index = spr_boar_idling;
	recover_counter += 1/room_speed;
	if (recover_counter >= recover_limit){
		recover_counter = 0;
		dir = -dir;
		state = "idling";
	}
}

y += vspd;
if (!grounded){
vspd += obj_player.grav;
}
else vspd = 0;


x += hspd;
//cOLLISINON
if (place_meeting(x + hspd,y,obj_wall)){
	while (!place_meeting(x + sign(hspd)*1,y,obj_wall)){
		x += sign(hspd)*1;
	}
	hspd = 0;
}

if (place_meeting(x,y + vspd,obj_wall)){
	while (!place_meeting(x,y + sign(vspd)*1,obj_wall)){
		y += sign(vspd)*1;
	}
	vspd = 0;
}

var xp, yp;
xp = x;
yp = y + 16;
part_emitter_region(global.ps_leaves, global.pe_leaves, xp-16, xp+16, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);

if (sprite_index = spr_boar_walking && place_meeting(x,y+1,obj_wall_leaves)){
	part_emitter_burst(global.ps_leaves, global.pe_leaves, global.pt_leaves, 1);
}