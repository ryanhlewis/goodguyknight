x = obj_player.x;
x = clamp(x,0,room_width);
y = obj_player.y;
y = clamp(y,0, room_height);

if (global.opal) sprite_index = spr_lightness;