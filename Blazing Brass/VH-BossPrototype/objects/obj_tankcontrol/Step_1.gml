if(gamepad_button_check_pressed(0,gp_face1)&&tankcontrol == 1){
	tankcontrol = 0;
	obj_player1.canmove = 1;
	cooldown = 60;
	image_alpha = 0.5;
}