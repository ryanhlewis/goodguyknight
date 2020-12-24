y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);

var xp, yp;
xp = x;
yp = y;
part_emitter_region(global.ps_motes, global.pe_motes, xp - room_width/2, xp + room_width/2, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(global.ps_motes, global.pe_motes, global.pt_motes, -6);

if (room = rm_house_interior) instance_destroy();