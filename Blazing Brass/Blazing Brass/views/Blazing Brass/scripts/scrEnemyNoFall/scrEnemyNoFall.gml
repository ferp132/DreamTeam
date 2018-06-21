if(!place_meeting( x - sprite_width/2 + HMovement, y + 1, objCollide) || place_meeting(x + MoveDir, y, objCollide)) 
{
	HMovement = 0;
	scrEnemyDecision();
}

