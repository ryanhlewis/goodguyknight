var opal = instance_create_depth(350 + space,225,0,obj_item_win);
opal.sprite_index = spr_opal;
audio_sound_pitch(snd_weow_pickup,.9);
audio_play_sound(snd_weow_pickup,0,0);

alarm[2] = next;