var ruby = instance_create_depth(350,225,0,obj_item_win);
ruby.sprite_index = spr_ruby;
audio_sound_pitch(snd_weow_pickup,.8);
audio_play_sound(snd_weow_pickup,0,0);

alarm[1] = next;