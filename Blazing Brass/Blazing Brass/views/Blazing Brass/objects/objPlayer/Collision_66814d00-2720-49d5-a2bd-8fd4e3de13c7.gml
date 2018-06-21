if(other.MyOwner == objEnemy)
{
	PlayerHP -= BulletDamage;
	instance_destroy(other);
}