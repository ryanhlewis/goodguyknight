if (mask_index = -1) counter += 1;
if (counter >= counter_limit){
	mask_index = spr_crawl_space;
	counter = 0;
}

if (moved = true){
	y += move_distance;
	alarm[0] = counter_limit;
	moved = false;
}