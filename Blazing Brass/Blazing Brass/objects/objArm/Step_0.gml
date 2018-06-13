with(MyOwner)
{
	other.x = x;
	other.y = objPlayer.y - 32;
	other.Direction = MoveDir;
	other.GunDamage = PlayerDamage;
	other.GunFireRate = PlayerFireRate;
	other.GunBulletSpeed = PlayerBulletSpeed;
}
Pointing = point_direction(x, y, mouse_x, mouse_y);

if(Direction == 1)
{
	if(Pointing <= 180 && Pointing >= 5) Pointing = 5;
	else if (Pointing > 180 && Pointing <= 315) Pointing = 315;
	image_yscale = Direction;
}
else if(Direction = -1)
{
	if(Pointing >= 0 && Pointing <= 175) Pointing = 175;
	else if (Pointing <= 360 && Pointing >= 225) Pointing = 225;
	image_yscale = Direction;
}

image_angle = Pointing + (20 * Direction);

if(mouse_check_button(mb_left) && ShootTimer <= 0) 
{
	with (instance_create_layer(x, y+30, "Instances", objbullet))
	{
		MyOwner = other.id;
		direction = other.Pointing;
		image_angle = other.Pointing;
		BulletDamage = other.GunDamage;
		speed = other.GunBulletSpeed;
	}
	ShootTimer = GunFireRate;
}
ShootTimer--;

if (y > room_height * 1.25) instance_destroy();