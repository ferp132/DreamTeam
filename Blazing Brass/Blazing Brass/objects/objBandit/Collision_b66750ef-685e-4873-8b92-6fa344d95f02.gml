if(other.MyOwner == objArm)
{
	EnemyHP -= other.BulletDamage;
	instance_destroy(other);
	instance_create_depth(x, other.y ,-1, objBloodSplatter);
	VMovement += -5
	y += VMovement;
	HMovement = (other.speed/10) * sign(x - other.x);
	
}
