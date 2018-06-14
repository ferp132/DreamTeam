image_xscale = -MoveDir;
if (MoveDir = 1)	BulletDirection = 0 + irandom_range(-5, 5);
else				BulletDirection = 180 + irandom_range(-5, 5);

//If The Enemy Can See A Player, Move To It
with(collision_circle(x, y, DetectionRange, objPlayer, 0, true))
{
	if(collision_line(x, y, other.x, other.y, objCollide, false, true) == noone) other.MoveDir = sign(x - other.x); 
}

PlayerInRange = collision_line(x, y - sprite_height/2, x + MaxAttackRange * MoveDir, y - sprite_height/2, objPlayer, 0, true);
if (PlayerInRange != noone)									CanAttackPlayer = true;
if (distance_to_object(PlayerInRange) < MinAttackRange)	CanAttackPlayer = false;
else if (distance_to_object(PlayerInRange) > DetectionRange)
{
	CanAttackPlayer = false;
}

if(place_meeting(x, y+1, objCollide)) 
{
	HMovement = HSpeed * MoveDir;
	sprite_index = sprBanditWalking;
	scrEnemyNoFall();
	
}
else
{
	VMovement += Gravity;
}

if(CanAttackPlayer)
{
	HMovement = 0;
	scrEnemyDecision();
}

scrHorzCollision();
scrVertCollision();


x += HMovement;
y += VMovement;

ShootTimer--;