if (gamepad_button_check_pressed(0,gp_padd))
{
	MenuSelection +=1;
	if MenuSelection > 4
	{
		MenuSelection = 1;
	}
}

if (gamepad_button_check_pressed(0,gp_padu))
{
	MenuSelection -=1;
	if MenuSelection < 1
	{
		MenuSelection = 4;
	}
}

if (keyboard_check_pressed(vk_down))
{
	MenuSelection +=1;
	if MenuSelection > 4
	{
		MenuSelection = 1;
	}
}

if (keyboard_check_pressed(vk_up))
{
	MenuSelection -=1;
	if MenuSelection < 1
	{
		MenuSelection = 4;
	}
}