can_move = true;
if (place_meeting(x,y,obj_crawl_space)){
			sprite_index = spr_cat_crawling;
		}
else sprite_index = spr_cat_braking;
var xp, yp;
xp = x;
yp = y + 10;
//part_emitter_region(global.ps, global.pe_dust, xp-5, xp+5, yp, yp, ps_shape_ellipse, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_dust, global.pt_dust, -2);