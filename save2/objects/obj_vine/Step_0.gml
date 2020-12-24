if (hp < 0){
	var burnt = instance_create_depth(x,y,depth,obj_vine_burnt);
	burnt.image_angle = image_angle;
	burnt.image_xscale = image_xscale;
	burnt.image_yscale = image_yscale;
	instance_destroy();
}

if (place_meeting(x,y+3,obj_vine_burnt) || place_meeting(x,y-3,obj_vine_burnt) || place_meeting(x-3,y,obj_vine_burnt) || place_meeting(x+3,y,obj_vine_burnt)){
	hp -= .1;
}
