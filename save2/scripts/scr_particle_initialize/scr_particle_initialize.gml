//systems
global.ps = part_system_create();
part_system_depth(global.ps, 300);
global.ps_motes = part_system_create();
part_system_depth(global.ps_motes,0);
global.ps_leaves = part_system_create();
part_system_depth(global.ps_leaves, 300);

//dust
global.pt_dust = part_type_create();
part_type_sprite(global.pt_dust, spr_dust, 0, 0, 0);
part_type_size(global.pt_dust, 0.50, 1.5, -0.01, 0);
part_type_scale(global.pt_dust, 1, 1);
part_type_orientation(global.pt_dust, 0, 360, 1, 0, 0);
part_type_color3(global.pt_dust, c_white, c_white, c_white);
part_type_alpha3(global.pt_dust, .6, 0.2, 0);
part_type_blend(global.pt_dust, 1);
part_type_life(global.pt_dust, 10, 60);
part_type_speed(global.pt_dust, 1, 3, -.1, 0);
part_type_direction(global.pt_dust, -10, -10, 0, 0);
part_type_gravity(global.pt_dust, .1, 90);

//motes
global.pt_motes = part_type_create();
part_type_sprite(global.pt_motes, spr_motes, 0, 0, 0);
part_type_size(global.pt_motes, .25, .5, -.0005, 0.01);
part_type_scale(global.pt_motes, 1, 1);
part_type_orientation(global.pt_motes, 0, 360, 0, 0, 0);
part_type_color3(global.pt_motes, 5544083, 5806682, 10725994);
part_type_alpha3(global.pt_motes, 0.48, 0.79, 0);
part_type_blend(global.pt_motes, 0);
part_type_life(global.pt_motes, 1000, 1200);
part_type_speed(global.pt_motes, 0, .75, -0.10, 0);
part_type_direction(global.pt_motes, 17, 166, 0, 5);
part_type_gravity(global.pt_motes, 0.10, 90);

//Leaves
global.pt_leaves = part_type_create();
part_type_sprite(global.pt_leaves, spr_leaf, 0, 0, true);
part_type_size(global.pt_leaves, 1.25, .75, 0, 0);
part_type_scale(global.pt_leaves, 1, 1);
part_type_orientation(global.pt_leaves, 0, 352, 0, 0, 1);
part_type_color3(global.pt_leaves, c_white, c_white, c_white);
part_type_alpha3(global.pt_leaves, 1, 1, 0.50);
part_type_blend(global.pt_leaves, 0);
part_type_life(global.pt_leaves, 30, 40);
part_type_speed(global.pt_leaves, 3, 4, -0.10, 1);
part_type_direction(global.pt_leaves, 98, 82, 0, 40);
part_type_gravity(global.pt_leaves, 0.15, 271);

//fire
global.pt_fire = part_type_create();
//part_type_shape(global.pt_fire, pt_shape_disk);
part_type_sprite(global.pt_fire, spr_fire,0,0,0);
part_type_size(global.pt_fire, 1, 1, 0.015, 0);
part_type_scale(global.pt_fire, 1, 1);
part_type_orientation(global.pt_fire, 0, 360, 0, 0, 0);
part_type_color3(global.pt_fire, 16777215, 65535, 255);
part_type_alpha3(global.pt_fire, 1, 0.8, 0.6);
part_type_blend(global.pt_fire, 0);
part_type_life(global.pt_fire, 30, 40);
part_type_speed(global.pt_fire, 5, 7.5, -0.25, 0);
part_type_direction(global.pt_fire, -15, 15, 0, 5);
part_type_gravity(global.pt_fire, 0.05, 90);

//emitters
global.pe_dust = part_emitter_create(global.ps);
global.pe_motes = part_emitter_create(global.ps_motes);
global.pe_leaves = part_emitter_create(global.ps_leaves);
global.pe_fire = part_emitter_create(global.ps_motes);