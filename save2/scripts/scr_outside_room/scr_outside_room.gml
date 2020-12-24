var out_limit = .75;

if (x < 0 || x > room_width || y > room_height) out_timer += 1/room_speed;

if (out_timer >= out_limit){
	hp -= 1;

	hspd = 0;
	vspd = 0;

	x = prev_door_x;
	y = prev_door_y;
	
	out_timer = 0;
}