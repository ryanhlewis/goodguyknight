if (other.key_up_pressed){
	global.ruby = true;
	var item_get = instance_create_depth(x,y,-200,obj_item_get);
	item_get.which = spr_ruby;
	item_get.description = description;
	audio_play_sound(snd_weow_pickup,0,0);
	var prompt = instance_create_depth(x,y,depth,obj_prompt);
	prompt.sprite_index = spr_prompt_ruby;
	scr_checkpoint();
	instance_destroy();
}