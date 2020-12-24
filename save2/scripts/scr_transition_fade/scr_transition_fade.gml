//scr_transition_fade(nextroom,transition_speed);

instance_create_depth(0,0,-600,obj_transition_fade);

with(obj_transition_fade){
    nextroom = argument0;
    transition_speed = argument1;
}

