repeat(abs(hspd)){
		//up slope
	if (place_meeting(x + sign(hspd),y, obj_wall)
		&& place_meeting(x + sign(hspd),y - 1, obj_wall) 
		&& place_meeting(x + sign(hspd),y - 2, obj_wall)
		&& place_meeting(x + sign(hspd),y - 3, obj_wall)
		&& !place_meeting(x + sign(hspd),y - 4, obj_wall)){
		y -= 4;
	}
	else if (place_meeting(x + sign(hspd),y, obj_wall)
		&& place_meeting(x + sign(hspd),y - 1, obj_wall) 
		&& place_meeting(x + sign(hspd),y - 2, obj_wall)
		&& !place_meeting(x + sign(hspd),y - 3, obj_wall)){
		y -= 3;
	}
	else if (place_meeting(x + sign(hspd),y, obj_wall)
		&& place_meeting(x + sign(hspd),y - 1, obj_wall)
		&& !place_meeting(x + sign(hspd),y - 2, obj_wall)){
		y -= 2;
	}
	else if (place_meeting(x + sign(hspd),y, obj_wall)
		&& !place_meeting(x + sign(hspd),y-1, obj_wall)){
		y -= 1;
	}
	
		//down slope
	if (!place_meeting(x + sign(hspd),y, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 1, obj_wall) 
		&& !place_meeting(x + sign(hspd),y + 2, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 3, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 4, obj_wall)
		&& place_meeting(x + sign(hspd),y + 5, obj_wall)){
		y += 4;
	}
	else if (!place_meeting(x + sign(hspd),y, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 1, obj_wall) 
		&& !place_meeting(x + sign(hspd),y + 2, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 3, obj_wall)
		&& place_meeting(x + sign(hspd),y + 4, obj_wall)){
		y += 3;
	}
	else if (!place_meeting(x + sign(hspd),y, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 1, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 2, obj_wall)
		&& place_meeting(x + sign(hspd),y + 3, obj_wall)){
		y += 2;
	}
	else if (!place_meeting(x + sign(hspd),y, obj_wall)
		&& !place_meeting(x + sign(hspd),y + 1, obj_wall)
		&& place_meeting(x + sign(hspd), y + 2, obj_wall)){
		y += 1;
	}


	if(!place_meeting(x + sign(hspd),y,obj_wall)){
		x += sign(hspd);
	}
	else{
		hspd = 0;
		break;
	}
}


repeat(abs(vspd)) {
    if (!place_meeting(x,y + sign(vspd),obj_wall))
        y += sign(vspd); 
    else {
        vspd = 0;
        break;
    }
}

if ((state = "jumping" || state = "falling") ){
	var dis = 18;
	var area = 23;
	if (position_meeting(x + (sign(image_xscale)*dis),y-area,obj_ledge)
		|| position_meeting(x + (sign(image_xscale)*dis),y-(area-2),obj_ledge)
		|| position_meeting(x + (sign(image_xscale)*dis),y-(area-3),obj_ledge)
		|| position_meeting(x + (sign(image_xscale)*dis),y-(area-4),obj_ledge)
		|| position_meeting(x + (sign(image_xscale)*dis),y-(area-5),obj_ledge)){
			state = "ledgegrab";
		}
}