if(instance_exists(objPlayer))
{
	x = objPlayer.x;
	y = objPlayer.y - 32;
}

dir = 25 + point_direction(x, y, mouse_x, mouse_y);
image_angle = dir;

if(mouse_check_button(mb_left) && ShootTimer <= 0) 
{
instance_create_layer(x+128, y+10, "Instances", objbullet);
ShootTimer = FireRate;
}
ShootTimer--;