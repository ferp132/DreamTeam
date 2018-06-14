sprite_index = sprBanditIdle;
DecisionCountdown--;

if(DecisionCountdown <= 0)
{
	DecisionCountdown = DecisionTime;
	
	if(CanAttackPlayer && ShootTimer <= 0) Choice = EnemyChoice.SHOOT;
	else if(PlayerInRange != noone && distance_to_object(PlayerInRange) < MinAttackRange && place_meeting(x + MoveDir, y, objCollide))
	{
		DecisionCountdown = 4;
		Choice = EnemyChoice.SHOOT;
		MoveDir = -MoveDir;
	}
	else if(place_meeting(x + MoveDir, y, objCollide)) Choice = EnemyChoice.CHANGEDIR;
	else if(place_meeting(x + (HSpeed*2 * MoveDir * 2 *(-VSpeed/Gravity)), y+1, objCollide)) Choice = choose(EnemyChoice.CHANGEDIR, EnemyChoice.JUMP);
	else Choice = 0;
	

	switch(Choice) 
	{
		case 0:
		{
			break;
		}
		case EnemyChoice.SHOOT:
		{
			sprite_index = sprBanditShooting;
			DecisionCountdown = 4;
			HMovement = 0;
			if (Shots > 0)
			{
				with (instance_create_layer(x, y- sprite_height/2, "Instances", objbullet))
				{
					MyOwner = other.id;
					direction = other.BulletDirection;
					image_angle = other.BulletDirection;
					BulletDamage = other.EnemyDamage;
					speed = other.EnemyBulletSpeed;
				}
				Shots--;
				
				if(Shots <= 0)
				{
					ShootTimer = EnemyFireRate;
					Shots = MaxShots;
				}
			}
			break;
		}
		case EnemyChoice.CHANGEDIR:
		{
			sprite_index = sprBanditWalking;
			MoveDir = -MoveDir;
			HMovement = HSpeed;
			break;
		}
		case EnemyChoice.JUMP:
		{
			sprite_index = sprBanditWalking;
			VMovement = VSpeed ;
			HMovement = HSpeed * 2 * MoveDir;
			break;
		}
	}
	
}