if (place_meeting(x,y,obj_crawl_space)){
			sprite_index = spr_cat_crouching;
			acc = init_acc/3;
			maxspeed = init_maxspeed/3;	
		}
		else {
			sprite_index = spr_cat_idle;
			acc = init_acc;
			maxspeed = init_maxspeed;
		}
can_move = true;