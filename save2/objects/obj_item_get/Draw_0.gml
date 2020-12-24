draw_self();

if (draw_item){
	if (!fade_out && item_a < 1) item_a += rate/2;
	if (fade_out && item_a > 0) item_a -= rate/2;
	
	var item_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
	var item_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 + 50;
	draw_sprite_ext(which,0,item_x,item_y + ease_y,scale,scale,0,c_white,item_a);
	
	draw_set_valign(fa_center);
	draw_set_halign(fa_middle);
	draw_set_font(fnt_arial_24_bold_aa);
	draw_set_color(c_black);
	//draw_text_ext_color(item_x, item_y + 80,description,35,300,c_black,c_black,c_black,c_black,item_a);
}
counter = (counter + increment) mod 360;
shift = amplitude * dsin(counter);
ease_y = shift;