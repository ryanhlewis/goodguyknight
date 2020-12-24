var onyx = instance_create_depth(350 + space + space,225,0,obj_item_win);
onyx.sprite_index = spr_onyx;
audio_sound_pitch(snd_weow_pickup,1);
audio_play_sound(snd_weow_pickup,0,0);

alarm[3] = next*3;