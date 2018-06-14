if(uav_in_control!=-1){
}

else if(gamepad_button_check_pressed(1,gp_face3)&&cooldown<=0){
	uav_in_control = 1;
	
	uavcontrol = 1;
	obj_player2.canmove = 0;
	obj_player2.speed = 0;
	image_alpha = 1;
	
	if(!instance_exists(obj_UAV)&&uav_cooldown<=0){
		instance_create_layer(obj_Tankbody.x,obj_Tankbody.y,"Instances",obj_UAV);
	}
	else{}
}