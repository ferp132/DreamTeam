if objTitle.MenuSelection = 2 && (gamepad_button_check_pressed(0,gp_face1))
{
	room_goto(room_Stage2)//The first level!
}

if objTitle.MenuSelection = 2 && (keyboard_check_pressed(vk_enter))
{
	room_goto(room_Stage2)
}