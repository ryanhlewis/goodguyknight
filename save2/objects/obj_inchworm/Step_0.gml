

if ((image_index > 1.25 && image_index < 1.75) || (image_index > 3.25 && image_index < 3.75)){
	move = true;
}
else move = false;

if(place_meeting(x + 6,y,obj_wall)) dir = 1;
if (place_meeting(x - 6,y,obj_wall)) dir = -1;

image_xscale = dir;


if (going = "up"){
	if (place_meeting(x,y - 10,obj_wall) || !position_meeting(x + (dir*4),y - 10,obj_wall)){
		going = "down";
	}
	if (move) y -= spd;
}

if (going = "down"){
	if (place_meeting(x,y + 10,obj_wall) || !position_meeting(x + (dir*4),y + 10,obj_wall)){
		going = "up";
	}
	if (move) y += spd;
}