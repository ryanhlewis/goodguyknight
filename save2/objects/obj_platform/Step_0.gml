if (obj_player.y > y && obj_player.state = "jumping") mask_index = -1;
else if (obj_player.key_down && obj_player.key_jump) mask_index = -1;
else if (!place_meeting(x,y,obj_player)) mask_index = spr_platform;