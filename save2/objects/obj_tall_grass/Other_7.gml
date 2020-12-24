if (sprite_index = spr_tall_grass_shaking){
	if (meeting_player && obj_player.sprite_index != spr_cat_walking) sprite_index = spr_tall_grass;
	if (!meeting_player) sprite_index = spr_tall_grass;
}