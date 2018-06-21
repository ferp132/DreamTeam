//If youre going to hit a wall, move to it and stop
if(place_meeting(x + HMovement_Push, y, objCollide))
{
	while(!place_meeting(x+sign(HMovement_Push), y, objCollide)) x += sign(HMovement_Push);
	HMovement_Push = 0;
}

x += HMovement_Push;