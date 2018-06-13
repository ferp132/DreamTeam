HInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
VInput = keyboard_check(ord("W"));

if(HInput != 0)
{
HMovement += HInput * Acceleration;
HMovement = clamp(HMovement, -HSpeed, HSpeed)
}else HMovement = 0;

if(place_meeting(x + HMovement, y, objCollide))
{
	while(!place_meeting(x+sign(HMovement), y, objCollide)) x += sign(HMovement);
	if (HMovement > 0) x += objCollide.FloorMovement;
	HMovement = 0;
}

if(place_meeting(x, y+1, objCollide))
{
	if(VInput)	VMovement = VSpeed;
	if(HMovement <= 0) x+= objCollide.FloorMovement;
} else VMovement	+= Gravity;

if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) y += sign(VMovement);
	VMovement = 0;
}

x += HMovement;
y += VMovement;

if (y > room_height * 1.5) instance_destroy();