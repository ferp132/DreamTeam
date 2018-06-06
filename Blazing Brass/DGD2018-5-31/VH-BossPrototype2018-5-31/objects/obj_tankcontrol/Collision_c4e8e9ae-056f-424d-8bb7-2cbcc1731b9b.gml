if(gamepad_button_check_pressed(0,gp_face1)&&cooldown<=0){
	tankcontrol = 1;
	obj_player1.canmove = 0;
	obj_player1.speed = 0;
	image_alpha = 1;
}