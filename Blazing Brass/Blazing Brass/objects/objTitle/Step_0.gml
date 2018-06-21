if (gamepad_button_check_pressed(0,gp_padd))
{
	MenuSelection +=1;
	if MenuSelection > 3
	{
		MenuSelection = 1;
	}
}

if (gamepad_button_check_pressed(0,gp_padu))
{
	MenuSelection -=1;
	if MenuSelection < 1
	{
		MenuSelection = 3;
	}
}