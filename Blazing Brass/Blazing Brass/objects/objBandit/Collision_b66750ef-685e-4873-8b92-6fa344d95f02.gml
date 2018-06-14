if(other.MyOwner == objArm)
{
	EnemyHP -= other.BulletDamage;
	instance_destroy(other);
	
	VMovement += -5
	y += VMovement;
	HMovement =  other.speed/10;
	
}
