rate = .1;
if (!audio_is_playing(snd_fire)){
	audio_sound_gain(snd_fire,0,0);
	audio_sound_gain(snd_fire,1,200);
}