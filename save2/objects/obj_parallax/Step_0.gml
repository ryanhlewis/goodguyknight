var foreground_layer = layer_get_id("Foreground");
var back_near = layer_get_id("Back_near");
var back_mid = layer_get_id("Back_mid");
var back_far = layer_get_id("Back_far");

var camspeed = obj_camera.hspd;
if (abs(camspeed) > .1) var cam_adjust = camspeed;
else var cam_adjust = 0;

layer_hspeed(foreground_layer,cam_adjust + (-camspeed * fore_factor));

layer_hspeed(back_near,cam_adjust + (-camspeed * near_factor));

layer_hspeed(back_mid,cam_adjust + (-camspeed * mid_factor));

layer_hspeed(back_far,cam_adjust + (-camspeed * far_factor));