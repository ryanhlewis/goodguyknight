sprite_index = spr_cat_falling;

if (place_meeting(x,y+2,obj_wall)){
	audio_play_sound(snd_landing,0,0);
	state = "idle";
}