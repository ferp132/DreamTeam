if(shield_in_control!=-1){
}

else if(gamepad_button_check_pressed(1,gp_face3)&&cooldown<=0){
	shield_in_control = 1;
	
	shieldcontrol = 1;
	obj_player2.canmove = 0;
	obj_player2.speed = 0;
	image_alpha = 1;
}