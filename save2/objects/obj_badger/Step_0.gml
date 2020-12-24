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
	sprite_index = spr_badger_idling;
	hspd = 0;
	if (place_meeting(x + random_range(-1,1)*range,y, obj_player)){
		state = "spotted";
		if (obj_player.x > x) dir = 1;
		else dir = -1;
	}
};

if (state = "spotted"){
	vspd -= jumpspeed;
	state = "charging";
}

if (state = "charging"){
	sprite_index = spr_badger_walking;
	hspd += acc * dir;
	if (place_meeting(x+hspd,y,obj_player)){
		hspd = 0;
		state = "attacking";
	}
	else if (place_meeting(x+hspd,y,obj_wall) || distance_to_point(home,y) > range){
		state = "returning";
	}
}

if (state = "attacking"){
	sprite_index = spr_badger_attacking;
	if(image_index > 3 && !instance_exists(obj_badger_scratch)){
		var scratch = instance_create_depth(x,y,depth,obj_badger_scratch);
		if (dir = -1) scratch.image_xscale = -2;
	}
}

if (state = "recovering"){
	sprite_index = spr_badger_idling;
	recover_counter += 1/room_speed;
	if (recover_counter >= recover_limit){
		recover_counter = 0;
		state = "returning";
	}
}

if (state = "returning"){
	if (home > x) dir = 1;
	else dir = -1;
	hspd += acc * dir;
	if (distance_to_point(home,y) < 5) state = "idling";
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

if (sprite_index = walking_sprite && place_meeting(x,y+1,obj_wall_leaves)){
	part_emitter_burst(global.ps_leaves, global.pe_leaves, global.pt_leaves, 1);
}

hspd = clamp(hspd,-maxspeed,maxspeed);