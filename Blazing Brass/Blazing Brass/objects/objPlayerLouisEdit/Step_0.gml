//Get Input
HInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
VInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
JInput = keyboard_check(vk_space);

//If there is input, increase movement
if(HInput != 0)
{
HMovement += HInput * Acceleration;
HMovement = clamp(HMovement, -HSpeed, HSpeed)
}else HMovement = 0;


//If youre going to hit a wall, move to it and stop
if(place_meeting(x + HMovement, y, objCollide))
{
	while(!place_meeting(x+sign(HMovement), y, objCollide)) x += sign(HMovement);
	if (HMovement < 0) x += -obj_Control.GlobalMovement;
	HMovement = 0;
}

//-----Apply Horizontal Movement
if (HMovement == 0) x += obj_Control.GlobalMovement;
else x += HMovement;




if(place_meeting(x, y+1, objCollide))
{
	if(-VInput)	VMovement = VSpeed;
}
else VMovement += Gravity;

//-----Ladder
if(place_meeting(x, y, objLadder))
{
	VMovement = 0;
	if(VInput != 0)	VMovement = VSpeed * -VInput;
}

//-----Vertical Collision
if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) y += sign(VMovement);
	VMovement = 0;
}

//-----Apply Vertical Movement
y += VMovement;

//-----Destroy The Player
if (y > room_height * 1.5) instance_destroy();