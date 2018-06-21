if(EnemyHP <= 0) instance_destroy();

PlayerInRange = collision_circle(x, y, DetectionRange, objPlayer, 0, true)

with(PlayerInRange)
	{
		if(collision_line(x, y, other.x, other.y, objCollide, false, true) == noone)
		{
			other.Direction = point_direction(other.x,other.y,x,y);
			other.active = true;
			other.Facing = sign(x - other.x);
		}
	}
	
if(Facing == 1)
{
	if(Direction <= 180 && Direction >= 15) Direction = 15;
	else if (Direction > 180 && Direction <= 340) Direction = 340;
	image_yscale = Facing;
	image_xscale = -Facing;
}
else if(Facing = -1)
{
	if(Direction >= 0 && Direction <= 165) Direction = 165;
	else if (Direction <= 360 && Direction >= 200) Direction = 200;
	image_yscale = Facing;
	image_xscale = Facing;
}
	
	
if(PlayerInRange != noone && active)
{
	if (distance_to_object(PlayerInRange) < MaxAttackRange){
		CanAttackPlayer = true;
		//image_angle += sin(degtorad(Direction - image_angle)) * RotationSpeed;
		//image_angle += Direction Creates BulletTrap;
		image_angle = Direction;
		
	}
}
else if (distance_to_object(PlayerInRange) > DetectionRange)
{
	CanAttackPlayer = false;
}
else CanAttackPlayer = false;
	


if (CanAttackPlayer && ShootDelay <= 0)
{
	if(EnemyShotRate <=0)
	{
		if(Shots > 0)
		{
		with(instance_create_layer(x + 40 * Facing,y - 75,"Instances",objbullet))
		{
					MyOwner = other.id;
					direction = other.image_angle + irandom_range(-2, 2);
					image_angle = other.image_angle;
					BulletDamage = other.EnemyDamage;
					speed = other.EnemyBulletSpeed;
		}
		}
		Shots--;
		if(Shots <= 0)
		{
			ShootDelay = EnemyFireRate;
			Shots = MaxShots;
		}
		EnemyShotRate = 5;
	}
	EnemyShotRate--
}
else active = false;
{
	sprite_index = sprTurretIdle;
}

x += objControl.GlobalMovement;
ShootDelay--;

