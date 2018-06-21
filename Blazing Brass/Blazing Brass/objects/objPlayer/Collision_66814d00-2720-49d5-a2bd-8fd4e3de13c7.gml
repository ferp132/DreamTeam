if(other.MyOwner != objPlayer)
{
	instance_create_depth(x, other.y ,-1, objBloodSplatter);
	PlayerHP -= other.BulletDamage;
	instance_destroy(other);

}