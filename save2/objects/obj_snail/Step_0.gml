if (dir = 1) hspd = 1;
if (dir = -1) hspd = -1;

if (hp < 0){
	sprite_index = spr_snail_burnt;
	state = "dead";
}

switch (dir){
	case -1: image_xscale = -1; break;
	case 1: image_xscale = 1; break;
}

if (place_meeting(x + hspd,y,obj_wall)){
		dir = -dir;
		hspd = -hspd;
		x += hspd;
}


if (place_meeting(x,y + vspd,obj_wall)){
	while (!place_meeting(x,y + sign(vspd)*1,obj_wall)){
		y += sign(vspd)*1;
	}
	vspd = 0;
}

if (!place_meeting(x,y+1,obj_wall)) vspd = 1;
else vspd = 0;

if (image_index > 3.25 && image_index < 3.75 && state = "alive") x += hspd;

y += vspd;