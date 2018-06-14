//-----GetInput
scrGetInput();

//-----Apply Horizontal Input
if(HInput != 0)
{
		MoveDir = HInput;
		if(place_meeting(x, y+1, objCollide)) State = PlayerState.RUN;
		HMovement += MoveDir * Acceleration;
		HMovement = clamp(HMovement, -HSpeed, HSpeed)
}
else	
{
	if(place_meeting(x, y+1, objCollide)) State = PlayerState.IDLE;
	HMovement = 0;
}

if(place_meeting(x, y+1, objCollide))
{
	CanHover = 0;
	HoverCounter = HoverTime * HoverTimeMultiplier;
	if(JInput)
	{
		State = PlayerState.JUMP;
		VMovement = VSpeed;
	}
}
else 
{
	if(CanHover && HoverInput)
	{
		VMovement = -1;
		if(VInput !=0) 
		{
			VMovement = HSpeed * VInput;
		}
		HoverCounter--;
		if (HoverCounter <= 0) CanHover = false;
	}
	else if(JInput && HoverCounter > 0)
	{
		State = PlayerState.STARTHOVER;
		CanHover = 1;
	}
	else
	{
		State = PlayerState.FALL;
		VMovement += Gravity;
	}
}

if(!AInput)
{
	State = PlayerState.ACTIVATE;
}

//-----Collisions
scrHorzCollision();
scrVertCollision();

//-----Apply Movement
scrMove();

//scrSetPlayerState();
scrSetPlayerSprite();

#region Destroy The Player

if (y > room_height * 1.5 || PlayerHP <= 0) instance_destroy();

#endregion