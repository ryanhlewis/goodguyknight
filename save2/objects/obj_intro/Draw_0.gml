t = (t + increment) mod 360;
shift = amplitude * dsin(t);
img_y = yy + shift;

var first = x + 7;

if (draw_1){
	if (a < 1) a += rate;
	draw_sprite_ext(spr_speech_bubble,0,x-7,img_y-4,1,1,0,c_white,a);
	draw_sprite_ext(spr_ruby,0,first,img_y,1,1,0,c_white,a);

}

if (draw_2){
	if (a_2 < 1) a_2 += rate;
	draw_sprite_ext(spr_opal,0,first + space,img_y,1,1,0,c_white,a_2);
}

if (draw_3){
	if (a_3 < 1) a_3 += rate;
	draw_sprite_ext(spr_onyx,0,first + space*2,img_y,1,1,0,c_white,a_3);
}