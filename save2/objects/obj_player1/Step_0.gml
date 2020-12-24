//Input
var gp_deadzone = .25;
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl) || gamepad_axis_value(0,gp_axislh) < -gp_deadzone;
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr) || gamepad_axis_value(0,gp_axislh) > gp_deadzone;
key_jump = keyboard_check(vk_space) || gamepad_button_check(0,gp_face1);
key_jump_released = keyboard_check_released(vk_space) || gamepad_button_check_released(0,gp_face1);
key_jump_pressed = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1);
key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd) || gamepad_axis_value(0,gp_axislv) > gp_deadzone;
key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -gp_deadzone;
key_up_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -gp_deadzone;
key_fire = keyboard_check(ord("F")) || gamepad_button_check(0,gp_face3);
key_phase_pressed = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0,gp_face4);

grounded = place_meeting(x,y+1,obj_wall) || place_meeting(x,y+2,obj_wall);

//previous state
var previous_state = state;

//MOVEMENT
if (grounded && !state_locked){
	if (key_left){
		if (hspd > 0) state = "braking";
		else state = "walking";
	}
	else if (key_right){
		if (hspd < 0) state = "braking";
		else state = "walking";
	}
	else if (abs(hspd) > 0) state = "braking";
	else if (!key_jump) state = "idle";
}

if (can_move = true) scr_player_movement();

	//deceletayopm
if (!key_left && !key_right) hspd += -sign(hspd) * acc/2.5;

	//deadzone (prevent shake)
if (abs(hspd) < acc) hspd = 0;

	//jump
if (key_jump_pressed && !key_down && grounded && !key_fire){
	var collide = instance_position(x,y-jumpspeed,obj_wall);
	if (collide = noone) vspd -= jumpspeed;
	else if (collide.object_index != obj_wall_leaves && collide.object_index != obj_wall) vspd -= jumpspeed;
}
if (key_jump_released && vspd < 0) vspd = vspd/3;
if (vspd < 5 && !grounded && !state_locked) state = "jumping";
if (vspd > 5 && !grounded && !state_locked) state = "falling";

	//crouch and crawl
if (grounded && key_down && !state_locked){
	if (abs(hspd) > 0) state = "crawling";
	else{
		hspd = 0;
		state = "crouching";
	}
}

	//drop through
if (key_down && key_jump_pressed){
	if (place_meeting(x,y+1,obj_platform)){
		vspd += 5;
	}
	if (instance_exists(obj_platform)) with(obj_platform) mask_index = -1;
}

	//collision
if (can_collide) scr_player_collision();


//Gravity
	
	//falling
		
if (vspd > 10 && !grounded) vspd += vspd/40;

vspd += grav;
vspd = clamp(vspd,-jumpspeed,jumpspeed+5);


//STATE SWITCH
switch(state){
	case "idle":
		scr_player_state_idle();
		break;
	case "walking":
		scr_player_state_walking();
		break;
	case "jumping":
		scr_player_state_jumping();
		break;
	case "falling":
		scr_player_state_falling();
		break;
	case "braking":
		scr_player_state_braking();
		break;
	case "crouching":
		scr_player_state_crouching();
		break;
	case "crawling":
		scr_player_state_crawling();
		break;
	case "ledgegrab":
		scr_player_state_ledgegrab();
		break;
	case "transitioning":
		scr_player_state_transitioning();
		break;
}

	//direction
if (hspd < 0) image_xscale = -scale;
else if (hspd > 0) image_xscale = scale;

if (hp != hp_previous) instance_create_depth(x,y,depth,obj_cat_ghost);
hp_previous = hp;

//outside room
scr_outside_room();

//ded
if (hp <= 0) instance_create_depth(x,y,depth,obj_gameover);

//abilities 
//if (global.ruby = true){
//	if (key_fire && grounded && sprite_index != spr_cat_braking && sprite_index != spr_cat_crouching && sprite_index != spr_cat_crawling) scr_fire();
//}