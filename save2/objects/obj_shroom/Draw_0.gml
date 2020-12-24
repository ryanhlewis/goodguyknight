draw_self();

var halo_scale = random_range(.7,.75);

if (glowing) draw_sprite_ext(spr_halo,0,x,y-6,halo_scale,halo_scale,0,c_white,.5);

if (hp < 0) sprite_index = spr_shroom_burnt;