if objTitle.MenuSelection = 1 && (gamepad_button_check_pressed(0,gp_face1))
{
	room_goto(room0)//The first level!
}

if objTitle.MenuSelection = 1 && (keyboard_check_pressed(vk_enter))
{
	room_goto(room0)
}