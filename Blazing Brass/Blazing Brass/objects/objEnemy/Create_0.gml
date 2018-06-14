event_inherited();

enum EnemyState
{
	IDLE = 0,
	CHASE,
	ATTACK,
	DEAD
}
enum EnemyChoice
{
	CHANGEDIR = 1,
	JUMP,
	SHOOT
}

//-----Attack/Health Variables
EnemyHP = 100;
EnemyHPMultiplier = 1;
EnemyDamage = 10;
AttackMultiplier = 1;
EnemyBulletSpeed = 100;
EnemyFireRate = 5;
ShootTimer = EnemyFireRate;
MaxShots = 5;
Shots = MaxShots;

//-----Enemy State & Choices
State = EnemyState.IDLE;
Choice = 0;

//Enemy LOS
CanSeePlayer = 0;
CanAttackPlayer = 0;
DetectionRange = 1024;
MaxAttackRange = DetectionRange;
MinAttackRange = DetectionRange/4;
PlayerInRange = noone;

//-----Decision Making
DecisionTime = 60;
DecisionCountdown = DecisionTime;
