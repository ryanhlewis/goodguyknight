image_index = irandom(image_number-1);

if(random(100) < 50) depth = obj_player.depth - 1;
scale = random_range(.5,1);

image_xscale = scale;
image_yscale = scale;

glowing = false;
if(image_index = 6) glowing = true;

hp = 3;