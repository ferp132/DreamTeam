//y -= obj_tankcontrol.tank_speed;

if(gun_in_control==-1){
}

else if(gamepad_button_check_pressed(gun_in_control,gp_face3)&&guncontrol == 1){
	guncontrol = 0;
	
	switch(gun_in_control){
	case 0:
	obj_player1.canmove = 1;
	break;
	case 1:
	obj_player2.canmove = 1;
	break;
	case 2:
	//obj_player3.canmove = 1;
	break;
	case 3:
	//obj_player4.canmove = 1;
	break;
	default:
	break;
	}
	
	gun_in_control = -1;
	
	cooldown = 60;
	image_alpha = 0.5;
}