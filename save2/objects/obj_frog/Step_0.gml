if (dir = 1) hspd = 2;
if (dir = -1) hspd = -2;

if (hp < 0) instance_destroy();

if (place_meeting(x,y+1,obj_wall)) state = "idling";

if (state = "idling"){
	sprite_index = spr_frog;
	if (random(100) < 2){
		state = "jumping";
		y -= 1;
		jumpspeed = random_range(minjump,maxjump);
		audio_sound_pitch(snd_ribbit,random_range(.8,1.2));
		audio_play_sound(snd_ribbit,0,0);
		vspd -= jumpspeed;
	}
}

if (state = "jumping"){
	sprite_index = spr_frog_jumping;
	x += hspd;
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

if (!place_meeting(x,y+1,obj_wall)) vspd += grav;
else vspd = 0;


y += vspd;