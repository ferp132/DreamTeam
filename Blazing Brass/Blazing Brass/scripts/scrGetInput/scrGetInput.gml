//Get Input
if(MyController == -1)
{
	HInput		= keyboard_check(ord(RightKey)) - keyboard_check(ord(LeftKey));
	VInput		= keyboard_check(ord(DownKey)) - keyboard_check(ord(UpKey));
	JInput		= keyboard_check_pressed(JumpKey);
	HoverInput	= keyboard_check(JumpKey);
	ShootInput  = mouse_check_button(ShootKey);
	AInput		= keyboard_check(ActivateKey);
}
else
{
	HInput		= sign(gamepad_axis_value(MyController, gp_axislh));
	VInput		= sign(gamepad_axis_value(MyController, gp_axislv));
	JInput		= gamepad_button_check_pressed(MyController, gp_face1);
	HoverInput	= gamepad_button_check(MyController, gp_face1);
	ShootInput  = gamepad_button_check(MyController, gp_shoulderrb);
	AInput		= gamepad_button_check(MyController, gp_face3);
}