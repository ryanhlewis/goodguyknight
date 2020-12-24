if (obj_player.invincible = false){
	other.hp -= 1;
	other.invincible = true
	other.hspd = sign(hspd)*10;
	//other.vspd -= other.jumpspeed*.75;
		var collide = instance_position(other.x,other.y-other.jumpspeed,obj_wall);
	if (collide = noone) other.vspd -= other.jumpspeed*.75;
	else if (collide.object_index != obj_wall_leaves && collide.object_index != obj_wall) other.vspd -= other.jumpspeed*.75;
	scr_sleep(100);
	scr_shake(2);
}