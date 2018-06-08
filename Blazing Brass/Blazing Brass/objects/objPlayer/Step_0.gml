#region GetInput
	scrGetInput();
#endregion

#region Apply Horizontal Input

//If there is input, increase movement

if(HInput != 0)
{
HMovement += HInput * Acceleration;
HMovement = clamp(HMovement, -HSpeed, HSpeed)
}else HMovement = 0;

#endregion

#region Horizontal Collision Check

scrHorzCollision();

#endregion

#region Apply Horizontal Movement

if (HMovement == 0) x += objControl.GlobalMovement;
else x += HMovement;

#endregion

#region Jump & Gravity

if(place_meeting(x, y+1, objCollide))
{
	if(-VInput)	VMovement = VSpeed;
}
else VMovement += Gravity;

#endregion

#region Ladder

if(place_meeting(x, y, objLadder))
{
	VMovement = 0;
	if(VInput != 0)	VMovement = VSpeed * -VInput;
}

#endregion

#region Vertical Collision Check

scrVertCollision();

#endregion

#region Apply Vertical Movement

y += VMovement;

#endregion

#region Destroy The Player

if (y > room_height * 1.5 || HP <= 0) instance_destroy();

#endregion