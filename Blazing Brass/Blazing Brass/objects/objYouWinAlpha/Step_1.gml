if (objBoss.BossDead == true)
{
	image_alpha += 0.002;
	if (image_alpha == 0.5)
	{
		image_alpha = 0.5;
	}
}
if (obj_Tankbody.hp <= 0)
{
	room_goto(MenuRoom)
}