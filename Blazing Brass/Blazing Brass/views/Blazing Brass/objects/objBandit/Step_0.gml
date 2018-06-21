image_xscale = -MoveDir;

if(EnemyHP >= 0)
{

	if (MoveDir = 1)	BulletDirection = 0 + irandom_range(-5, 5);
	else				BulletDirection = 180 + irandom_range(-5, 5);

	//If The Enemy Can See A Player, Move To It
	with(collision_circle(x, y, DetectionRange, objPlayer, 0, true))
	{
		if(collision_line(x, y, other.x, other.y, objCollide, false, true) == noone && place_meeting(x,y +1, objCollide)) other.MoveDir = sign(x - other.x); 
	}

	PlayerInRange = collision_line(x, y - sprite_height/2, x + MaxAttackRange * MoveDir, y - sprite_height/2, objPlayer, 0, true);
	if (PlayerInRange != noone)									CanAttackPlayer = true;
	if (distance_to_object(PlayerInRange) < MinAttackRange)		
	{
		CanAttackPlayer = false;
		with(PlayerInRange)
		{
			other.MoveDir = sign(other.x - x);
		}
	}
	else if (distance_to_object(PlayerInRange) > DetectionRange)
	{
		CanAttackPlayer = false;
	}

	if(place_meeting(x, y+1, objCollide)) 
	{
		HMovement += HSpeed * MoveDir;
		HMovement = clamp(HMovement, -HSpeed, HSpeed);
		sprite_index = sprBanditWalking;
		scrEnemyNoFall();
	}
	else
	{
		VMovement += Gravity;
	}

	if(CanAttackPlayer && place_meeting(x,y +1, objCollide))
	{
		HMovement = 0;
		scrEnemyDecision();
	}

	scrHorzCollision();
	scrVertCollision();
	if(HMovement == 0) HMovement = objControl.GlobalMovement;

	x += HMovement;
	y += VMovement;

	ShootTimer--;

}
else
{
	sprite_index = sprBanditDeath;
	
	if(place_meeting(x,y +1, objCollide))
	{
		HMovement = 0;
	}
	
	VMovement += Gravity;
	scrHorzCollision();
	scrVertCollision();


	x += HMovement;
	y += VMovement;

	if(image_index >= 15) 	
	{
		image_speed = 0;
		image_alpha = lerp(image_alpha, 0, 0.1);
		if(image_alpha <= 0.01) instance_destroy();
	}
}