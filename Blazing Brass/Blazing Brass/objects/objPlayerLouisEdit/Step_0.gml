//Get Input
HInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
VInput = keyboard_check(ord("W"));

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
	if (HMovement > 0) x += obj_Control.GlobalMovement;
	HMovement = 0;
}

//if you're standing on something and you're pressing jump, jump, otherwise move with it. if youre not, fall
if(place_meeting(x, y+1, objCollide))
{
	if(VInput)	VMovement = VSpeed;
	if(HMovement == 0) x+= obj_Control.GlobalMovement;
} else VMovement	+= Gravity;

//Dont hit your head
if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) y += sign(VMovement);
	VMovement = 0;
}

//actually apply the movement
if (HMovement < 0) HMovement += obj_Control.GlobalMovement;
x += HMovement;
y += VMovement;

if (y > room_height * 1.5) instance_destroy();