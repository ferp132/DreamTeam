//If youre going to hit a wall, move to it and stop
if(place_meeting(x + HMovement, y, objCollide))
{
	while(!place_meeting(x+sign(HMovement), y, objCollide)) x += sign(HMovement);
	HMovement = 0;
}

if(place_meeting(x+MoveDir, y, objCollide)) x += -MoveDir;