sprite_index = spr_cat_falling;

hspd = 0;
vspd = 0;
if (audio_is_playing(snd_rustle)) audio_stop_sound(snd_rustle);
if (!instance_exists(obj_runes)) instance_create_depth(x,y,0,obj_runes);

if (obj_runes.done = true){
	if (!instance_exists(obj_fire_hitbox)) instance_create_depth(x,y,depth,obj_fire_hitbox);

	var fire_dir;
	if (abs(image_xscale > 0)) fire_dir = 0;
	else fire_dir = 180;
	
	part_type_direction(global.pt_fire, -15 + fire_dir, 15 + fire_dir, 0, 5);
	
	var xp, yp;
	xp = x + sign(image_xscale)*30;
	yp = y;
	part_emitter_region(global.ps_motes, global.pe_fire, xp-7, xp+7, yp-5, yp+5, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ps_motes, global.pe_fire, global.pt_fire, -1);
}

if (audio_is_playing(snd_footstep)) audio_stop_sound(snd_footstep);