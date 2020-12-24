dir = choose(-1,1);

hspd = dir;

vspd = 0;

minjump = 5;
maxjump = 10;
jumpspeed = random_range(5,10);

grav = .5;

state = "idling";
hp = 1;