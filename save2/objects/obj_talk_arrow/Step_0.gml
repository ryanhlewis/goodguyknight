var dist = distance_to_object(obj_player);
if (dist = 0) indicator_alpha = 1;
else indicator_alpha = abs(10/dist);

image_alpha = indicator_alpha;