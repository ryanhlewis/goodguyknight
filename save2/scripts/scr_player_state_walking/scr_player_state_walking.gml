var gain;
can_move = true;

if (place_meeting(x,y,obj_crawl_space)){
			sprite_index = spr_cat_crawling;
			acc = init_acc/3;
			maxspeed = init_maxspeed/3;
		}
		else {
			sprite_index = spr_cat_walking;
			acc = init_acc;
			maxspeed = init_maxspeed;
		}

var xp, yp;
xp = x;
yp = y + 16;
//part_emitter_region(global.ps_leaves, global.pe_leaves, xp-16, xp+16, yp-1, yp+1, ps_shape_rectangle, ps_distr_linear);

if (sprite_index = spr_cat_walking && place_meeting(x,y+1,obj_wall_leaves)){
	if (!audio_is_playing(snd_rustle)){
		audio_sound_pitch(snd_rustle,random_range(.9,1.1));
		audio_play_sound(snd_rustle,0,0);
	}
//	part_emitter_burst(global.ps_leaves, global.pe_leaves, global.pt_leaves, 1);
}

if (!audio_is_playing(snd_footstep)){
	audio_play_sound(snd_footstep,0,0);
}