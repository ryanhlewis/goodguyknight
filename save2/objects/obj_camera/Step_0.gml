//move to player with borders
if (x > obj_player.x + range/2){
	target_x = obj_player.x + range/2;
}
else if (x < obj_player.x - range/2){
	target_x = obj_player.x - range/2;
}
//if (obj_player.image_xscale > 0) target_x = obj_player.x + range/2;
//if (obj_player.image_xscale < 0) target_x = obj_player.x - range/2;


//peeking
if (obj_player.image_xscale > 0){
	if (peek_x < peek) peek_x += (peek - peek_x) * .025;
}
else  if (peek_x > -peek) peek_x -= (peek_x + peek) * .025;
/*
if (obj_player.key_up) peek_up_counter += 1/room_speed;
else peek_up_counter = 0;

if (obj_player.key_down) peek_down_counter += 1/room_speed;
else peek_down_counter = 0;
*/
if (peek_up_counter > peek_up_limit){
	peek_y -= (peek_y + peek_up) * .025;
}
else if (peek_down_counter > peek_down_limit){
	peek_y += (peek_up - peek_y) * .025;
}
else peek_y += (0 - peek_y)*.04;


x = clamp(x,camera_width/2,room_width - camera_width/2);


target_y = obj_player.y - 100;
y = clamp(y,camera_height/2,room_height - camera_height/2);

//set camera based on target and peek
camera_set_view_pos(view_camera[0],x - camera_width/2 + peek_x + choose(-shake,shake),y - camera_height/2 + peek_y + choose(-shake,shake));

target_x = clamp(target_x,camera_width/2,room_width - camera_width/2);
target_y = clamp(target_y,camera_height/2,room_height - camera_height/2);

//slow to target
hspd = (target_x - x) * .05;
vspd = (target_y - y) * .025;
if (x != target_x) x += hspd;
if (y != target_y) y += vspd;

//screen shake
if (shake > 0) shake -= decay;
if (shake < decay) shake = 0;

//bind in room
if (camera_get_view_y(view_camera[0]) < 0) camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),0);
if (camera_get_view_y(view_camera[0]) > room_height - camera_get_view_height(view_camera[0])) camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),room_height - camera_get_view_height(view_camera[0]));