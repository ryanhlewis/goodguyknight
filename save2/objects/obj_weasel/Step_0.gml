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
	sprite_index = spr_weasel_idling;
	if (abs(hspd) > acc) hspd -= sign(hspd) * acc;
	else hspd = 0;
	if (random(100) < 2){
		state = "walking";
		vspd -= jumpspeed/2;
	}
}

if (state = "walking"){
	sprite_index = spr_weasel_walking;
	hspd += acc * dir;
	if (random(100) < 1) state = "idling"
}

if (random(100) < 1 && grounded) vspd -= jumpspeed;

y += vspd;
if (!grounded){
vspd += obj_player.grav;
}
else vspd = 0;

hspd = clamp(hspd,-maxspeed,maxspeed);
x += hspd;

//cOLLISINON
if (place_meeting(x + hspd*2,y,obj_wall)){
		dir = -dir;
		hspd = -hspd;
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