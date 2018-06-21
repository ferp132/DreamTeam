if(EnemyHP <= 0) instance_destroy();

PlayerInRange = collision_circle(x, y, DetectionRange, objPlayer, 0, true)

with(PlayerInRange)
{
	if(collision_line(x, y, other.x, other.y, objCollide, false, true) == noone)
	{
		other.Direction = point_direction(other.x,other.y,x,y);
		other.Facing = sign(x - other.x);
	}
	else 
	{
		other.PlayerInRange = noone;
		other.CanAttackPlayer = false;
	}
}
	
if(Facing == 1)
{
	if(Direction <= 180 && Direction >= 15) Direction = 15;
	else if (Direction > 180 && Direction <= 340) Direction = 340;
	image_yscale = Facing;
	image_xscale = -Facing;
}
else if(Facing == -1)
{
	if(Direction >= 0 && Direction <= 165) Direction = 165;
	else if (Direction <= 360 && Direction >= 200) Direction = 200;
	image_yscale = Facing;
	image_xscale = Facing;
}
	
if(PlayerInRange != noone && distance_to_object(PlayerInRange) < MaxAttackRange)
{
		CanAttackPlayer = true;
		//image_angle += sin(degtorad(Direction - image_angle)) * RotationSpeed;
		//image_angle += Direction Creates BulletTrap;
		image_angle = Direction;
}else if(PlayerInRange != noone)
{
	PlayerInRange = noone;
	CanAttackPlayer = false;
}
	
if (CanAttackPlayer)
{
	ShootDelay--;
	if(EnemyShotRate <= 0 && ShootDelay <= 0)
	{
		if(Shots > 0)
		{
			with(instance_create_layer(x + 40 * Facing, y - 75,"Instances",objbullet))
			{
					MyOwner = other.id;
					direction = other.image_angle + irandom_range(-3, 3);
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
			CanAttackPlayer = false;
		}
		EnemyShotRate = 5;
	}
	EnemyShotRate--
}
else 
{
	if(ShootDelay < EnemyFireRate) ShootDelay++;
	if(Shots < MaxShots) Shots++;
	sprite_index = sprTurretIdle;
	active = false;
}
if(ShootDelay < 0) ShootDelay = 0;

x += objControl.GlobalMovement;

