if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) y += sign(VMovement);
	VMovement = 0;
}