if objTitle.MenuSelection = 3 && (gamepad_button_check_pressed(0,gp_face1))
{
	room_goto(MenuControls)
}

if objTitle.MenuSelection = 3 && (keyboard_check_pressed(vk_enter))
{
	room_goto(MenuControls)
}