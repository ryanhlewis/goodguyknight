x = camera_get_view_x(view_camera[0]) + x_border;
y = camera_get_view_y(view_camera[0]) + y_border;

image_index = obj_player.hp;
if (keyboard_check_pressed(ord("P"))) obj_player.hp -= 1;