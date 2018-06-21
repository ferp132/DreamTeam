if keyboard_check(ord("B"))
{
	room_goto(MenuRoom)
}

if (gamepad_button_check(0,gp_face2))
{
	room_goto(MenuRoom)
}
