if (other.key_up_pressed){
	global.opal = true;
	var item_get = instance_create_depth(x,y,-200,obj_item_get);
	item_get.which = spr_opal;
	item_get.description = description;
	audio_play_sound(snd_weow_pickup,0,0);
	scr_checkpoint();
	instance_destroy();
}