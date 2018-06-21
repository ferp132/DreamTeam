if(other.MyOwner != id)
{
	instance_destroy(other);
	
	Choice = choose(1,2);
	if (Choice = 1)
	{
		instance_create_depth(x, other.y ,-1, objBloodSplatter);
		EnemyHP -= other.BulletDamage;
	}
	else if (Choice = 2)
	{
		instance_create_depth(x, other.y ,-1, objBulletSpark);
	}
	
}
