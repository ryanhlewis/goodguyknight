image_alpha = a;
draw_self();

var camx_middle = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
var camy_middle = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

x = camx_middle;
y = camy_middle;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_set_alpha(a);
if (a < 1) a += rate;

draw_set_font(fnt_arial_24_bold_aa);

//draw_text(x,y - 100,"You Died");

//draw_text(x,y + 100,"Press to restart");

if (a = 1 && (obj_player.key_jump || keyboard_check(vk_anykey) || gamepad_button_check(0,gp_start))){
	scr_ded();
	instance_destroy();
}
