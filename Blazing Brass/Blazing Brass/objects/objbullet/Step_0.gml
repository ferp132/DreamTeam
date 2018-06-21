if(Gunfire = 0)
{
	with(instance_create_depth(x, y ,-1, objGunFire)) image_angle = other.direction;
	Gunfire = 1;
}