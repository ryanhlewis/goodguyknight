if (invincible){
	image_alpha = .4;
}
draw_self();

image_alpha = 1;

if (invincible){
	inv_counter += 1/room_speed;
	if (inv_counter >= inv_limit){
		invincible = false;
		inv_counter = 0;
	}
}
