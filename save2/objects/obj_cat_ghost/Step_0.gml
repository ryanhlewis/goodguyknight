image_alpha = a;

a -= fade;
if (a < 0) instance_destroy();

y -= 1;