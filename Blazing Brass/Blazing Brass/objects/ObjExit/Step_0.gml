if objTitle.MenuSelection = 4 && (gamepad_button_check_pressed(0,gp_face1))
{
	game_end();
}

if objTitle.MenuSelection = 4 && (keyboard_check_pressed(vk_enter))
{
	game_end();
}