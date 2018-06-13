enum EnemyState
{
	IDLE = 0,
	CHASE,
	ATTACK,
	DEAD
}

//-----Attack/Health Variables
EnemyHP = 100;
EnemyHPMultiplier = 1;
AttackPower = 10;
AttackMultiplier = 1;

//Enemy State
State = EnemyState.IDLE;
