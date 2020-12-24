x = obj_player.x;
y = obj_player.y;
image_xscale = 1 * sign(obj_player.image_xscale);

if (obj_player.key_fire = 0){
	if (audio_is_playing(snd_fire)) audio_stop_sound(snd_fire);
	instance_destroy();
}

if (!audio_is_playing(snd_fire)) audio_play_sound(snd_fire,0,0);