var layer_ded = layer_create(-500);

var back = layer_background_create(layer_ded,spr_gameover);
layer_background_htiled(back, true);
layer_background_vtiled(back, true);
layer_background_speed(back,8);
depth = -600;

a = 0;
rate = .05;

scale = 2;
image_xscale = scale;
image_yscale = scale;