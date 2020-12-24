//var time = current_time;

//wait = argument0;

//while(time + wait < current_time){

//}

var end_time = get_timer() + ((argument0*1000));

do {
	room_speed = 1;
}
until (get_timer() >= end_time);

room_speed = 60;