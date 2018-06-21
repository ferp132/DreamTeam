if(!place_meeting( x - sprite_width/2 + HMovement, y + 1, objCollide) || place_meeting(x + MoveDir, y, objCollide)) 
{
	sprite_index = sprBanditIdle;
	HMovement = 0;
	scrEnemyDecision();
}

