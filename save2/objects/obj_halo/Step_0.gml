var scale = 3;

var target_x = obj_player.x;
var target_y = obj_player.y;

if (x != target_x) x += (target_x - x) * .25;
if (y != target_y) y += (target_y - y) * .25;

image_xscale = scale;
image_yscale = scale;
