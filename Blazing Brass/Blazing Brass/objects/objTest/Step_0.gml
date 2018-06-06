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
	HMovement = 0;
}


//if you're standing on something and you're pressing jump, jump, otherwise move with it. if youre not, fall
if(place_meeting(x, y, objLadder))
{
	if(VInput != 0)	VMovement = -HSpeed * -VInput;
	else		VMovement = 0;
}
else if(place_meeting(x, y+1, objCollide) )
{
	if(JInput)	VMovement = VSpeed;
}
else VMovement	+= Gravity;

//Dont hit your head
if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) y += sign(VMovement);
	VMovement = 0;
}

//actually apply the movement
x += HMovement;
y += VMovement;

if (y > room_height * 1.5) instance_destroy();