if(gun_in_control!=-1){
}

else if(gamepad_button_check_pressed(0,gp_face3)&&cooldown<=0){
	gun_in_control = 0;
	
	guncontrol = 1;
	obj_player1.canmove = 0;
	obj_player1.speed = 0;
	image_alpha = 1;
}