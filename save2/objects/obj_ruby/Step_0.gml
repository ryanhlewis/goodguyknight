if (global.ruby) instance_destroy();

t = (t + increment) mod 360;
shift = amplitude * dsin(t);
y = yy + shift;

gain = clamp(gain,0,.5);
audio_sound_gain(snd_weow,gain,0);
if (audio_sound_get_gain(snd_weow) > .5) audio_sound_gain(snd_weow,.5,0);
gain = 1/(distance_to_object(obj_player)/25);