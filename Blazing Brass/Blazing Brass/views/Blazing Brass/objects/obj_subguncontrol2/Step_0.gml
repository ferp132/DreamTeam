if(guncontrol!=0){
	if(image_angle>=60){
		if(sign(gamepad_axis_value(gun_in_control,gp_axislh))>0){
			image_angle -= gamepad_axis_value(gun_in_control,gp_axislh);
		}
	}
	else if(image_angle<=0){
		if(sign(gamepad_axis_value(gun_in_control,gp_axislh))<0){
			image_angle -= gamepad_axis_value(gun_in_control,gp_axislh);
		}
	}
	else{
		image_angle -= gamepad_axis_value(gun_in_control,gp_axislh);
	}
	
	//Fire!
	if(gamepad_button_check(gun_in_control,gp_shoulderrb)){
		main_gun_bullet = instance_create_layer(x,y-15,"Instances_bullet",obj_bullet);
		main_gun_bullet.image_angle = image_angle;
		main_gun_bullet.direction = image_angle+random_range(-5,5);
		gamepad_set_vibration(gun_in_control, 1, 1);
		instance_create_layer(x+9,y,"Instances_bullet",obj_shell);
		image_speed = 15;
	}
	if(!gamepad_button_check(gun_in_control,gp_shoulderrb)){
		gamepad_set_vibration(gun_in_control, 0, 0);
		image_speed = 0;
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}