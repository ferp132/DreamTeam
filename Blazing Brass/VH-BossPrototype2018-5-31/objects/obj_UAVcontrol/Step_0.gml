if(uavcontrol!=0){
	//obj_UAV.image_angle -= gamepad_axis_value(uav_in_control,gp_axislh);
	obj_UAV.x += gamepad_axis_value(uav_in_control,gp_axislh)*10;
	obj_UAV.y += gamepad_axis_value(uav_in_control,gp_axislv)*10;
	if(gamepad_axis_value(uav_in_control,gp_axisrh)!=0||gamepad_axis_value(uav_in_control,gp_axisrv)!=0){
		//obj_UAV.image_angle = arctan2(gamepad_axis_value(uav_in_control,gp_axisrh),gamepad_axis_value(uav_in_control,gp_axisrv))*(180/3.1415926);
		//old_angle_uav = arctan2(gamepad_axis_value(uav_in_control,gp_axisrh),gamepad_axis_value(uav_in_control,gp_axisrv))*(180/3.1415926);
	}
	else{
		//obj_UAV.image_angle = old_angle_uav;
	}
	
	if(gamepad_button_check(uav_in_control,gp_shoulderrb)){
		uav_bullet = instance_create_layer(obj_UAV.x,obj_UAV.y,"Instances_bullet",obj_bullet);
		uav_bullet.direction = obj_UAV.image_angle;
		uav_bullet.image_angle = obj_UAV.image_angle;
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}
	uav_cooldown--;
	uav_cooldown = max(0,uav_cooldown);