scale = random_range(1,2);
image_xscale = scale;
image_yscale = scale;
color = choose("red","blue","brown");
hp = 2;

state = "idle";
range = 40;
acc = 5;
maxspeed = 400;
speed = 0;
direction = random_range(30,160);
depth = obj_player.depth

switch(color){
	case "red":
		idle_sprite = spr_bird_red;
		flying_sprite = spr_bird_flying_red;
		break;
	case "blue":
		idle_sprite = spr_bird_blue;
		flying_sprite = spr_bird_flying_blue;
		break;
	case "brown":
		idle_sprite = spr_bird_brown;
		flying_sprite = spr_bird_flying_brown;
}

sprite_index = idle_sprite;
image_index = irandom_range(0,image_number-1);