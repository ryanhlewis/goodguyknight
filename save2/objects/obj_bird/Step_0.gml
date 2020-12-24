if (state = "idle" && distance_to_object(obj_player) < range){
	audio_play_sound(snd_flapping,0,0);
	state = "spooked";
	depth = 100;
}
else speed = 0;

if (state = "spooked"){
	speed += acc;
	sprite_index = flying_sprite;
}

if (speed > maxspeed) speed = maxspeed;
if (direction > 90) image_xscale = -scale;

if (hp < 0) instance_destroy();