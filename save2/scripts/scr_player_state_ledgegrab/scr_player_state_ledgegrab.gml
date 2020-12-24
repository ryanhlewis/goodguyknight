sprite_index = spr_cat_ledgegrab;

if (key_jump_pressed){
	vspd -= jumpspeed;
	state = "jumping";
}
else vspd = 0;

if (key_jump_pressed || key_down){
	if(instance_exists(obj_ledge)){
		with(obj_ledge){
			mask_index = -1;
			moved = true;
		}
	}
}