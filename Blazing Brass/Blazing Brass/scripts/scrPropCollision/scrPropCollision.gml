if(place_meeting(x - 16, y, objPlayer))			HMovement = PushSpeed;
else if(place_meeting(x + 16, y, objPlayer))	HMovement = -PushSpeed;

if(place_meeting(x + HMovement, y, objCollide))
{
	while(!place_meeting(x+sign(HMovement), y, objCollide)) x += sign(HMovement);
	HMovement = 0;
}

if(place_meeting(x+MoveDir, y, objCollide)) x += -MoveDir;

x += HMovement + objControl.GlobalMovement;

if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) 
	{
		y += sign(VMovement);
		draw_self();
	}
	VMovement = 0;
}

if(!place_meeting(x, y + 1, objCollide)) VMovement += Gravity;
y += VMovement;

HMovement = lerp(HMovement, 0, 0.5);