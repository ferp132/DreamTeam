if(shield_in_control!=-1){
}

else if(gamepad_button_check_pressed(3,gp_face3)&&cooldown<=0){
	shield_in_control = 3;
	
	shieldcontrol = 1;
	obj_player4.canmove = 0;
	obj_player4.speed = 0;
	image_alpha = 1;
}