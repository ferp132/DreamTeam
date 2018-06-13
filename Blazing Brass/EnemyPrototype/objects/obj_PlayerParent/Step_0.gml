/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 589EDCF4
/// @DnDArgument : "code" "HInput = (keyboard_check(ord("D"))) - keyboard_check(ord("A"));$(13_10)VInput = keyboard_check(ord("W"));$(13_10)$(13_10)//Gamepad "Left": gamepad_axis_value(0,gp_axislh)<0)$(13_10)//Gamepad "Right":gamepad_axis_value(0,gp_axislh)>0)$(13_10)//Gamepad "Up": gamepad_axis_value(0,gp_axislv)<0)$(13_10)//Gamepad "Down": gamepad_axis_value(0,gp_axislv)>0)$(13_10)$(13_10)//Checks to see if the player object is interacting with a control object$(13_10)//before running script$(13_10)if(canmove==0){$(13_10)}$(13_10)else{$(13_10)$(13_10)if(HInput != 0)$(13_10){$(13_10)HMovement += HInput * Acceleration;$(13_10)HMovement = clamp(HMovement, -HSpeed, HSpeed)$(13_10)}else HMovement = 0;$(13_10)$(13_10)if(place_meeting(x + HMovement, y, objCollide))$(13_10){$(13_10)	while(!place_meeting(x+sign(HMovement), y, objCollide)) x += sign(HMovement);$(13_10)	if (HMovement > 0) x += objCollide.FloorMovement;$(13_10)	HMovement = 0;$(13_10)}$(13_10)$(13_10)if(place_meeting(x, y+1, objCollide))$(13_10){$(13_10)	if(VInput)	VMovement = VSpeed;$(13_10)	if(HMovement <= 0) x+= objCollide.FloorMovement;$(13_10)} else VMovement	+= Gravity;$(13_10)$(13_10)if(place_meeting(x, y + VMovement, objCollide))$(13_10){$(13_10)	while(!place_meeting(x, y+sign(VMovement), objCollide)) y += sign(VMovement);$(13_10)	VMovement = 0;$(13_10)}$(13_10)$(13_10)x += HMovement;$(13_10)y += VMovement;$(13_10)}$(13_10)//if (y > room_height * 1.5) instance_destroy();$(13_10)"
HInput = (keyboard_check(ord("D"))) - keyboard_check(ord("A"));
VInput = keyboard_check(ord("W"));

//Gamepad "Left": gamepad_axis_value(0,gp_axislh)<0)
//Gamepad "Right":gamepad_axis_value(0,gp_axislh)>0)
//Gamepad "Up": gamepad_axis_value(0,gp_axislv)<0)
//Gamepad "Down": gamepad_axis_value(0,gp_axislv)>0)

//Checks to see if the player object is interacting with a control object
//before running script
if(canmove==0){
}
else{

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
}
//if (y > room_height * 1.5) instance_destroy();