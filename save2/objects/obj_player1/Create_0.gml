state = "idle";
can_move = true;
can_collide = true;
state_locked = false;
invincible = false;
inv_counter = 0;
inv_limit = 1;
prev_door_x = 0;
prev_door_y = 0;

hp = 9;
hp_previous = hp;
out_timer = 0;


hspd = 0;
vspd = 0;
init_acc = .5;
acc = init_acc;
init_maxspeed = 4;
maxspeed = init_maxspeed;
grav = .6;
jumpspeed = 12;

scale = 2;
image_xscale = scale;
image_yscale = scale;

instance_create_depth(x,y,depth + 5,obj_halo);