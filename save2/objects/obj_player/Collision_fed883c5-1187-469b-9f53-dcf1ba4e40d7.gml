if (other.object_index != obj_platform){
	y = yprevious;
	if (!place_meeting(x,y+1,other.id)){
		y += 1;
	}
	if (y <= 386) move_outside_all(270,1);
	else move_outside_all(90,2);
}
//if (state = "walking")
x = xprevious;
//if (!position_meeting(x,y+8,obj_wall))