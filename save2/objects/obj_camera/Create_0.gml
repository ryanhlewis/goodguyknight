x = obj_player.x;
y = obj_player.y;
range = 125;
target_x = -1;
target_y = -1;
peek = 75;
peek_x = 0;
peek_y = 0;
peek_up = 50;
peek_up_counter = 0;
peek_up_limit = .5;
peek_down_counter = 0;
peek_down_limit = peek_up_limit;
hspd = 0;
vspd = 0;

shake = 0;
decay = .2;

camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);