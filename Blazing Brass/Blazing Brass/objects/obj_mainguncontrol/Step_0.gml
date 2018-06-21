if(guncontrol!=0){
	//image_angle -= gamepad_axis_value(gun_in_control,gp_axislh);
	
	//Fire!
	if(gamepad_button_check(gun_in_control,gp_shoulderrb)&&gun_cooldown<=0){
		instance_create_layer(x,y,"Instances_bullet",obj_bullet2);
		image_speed = 15;
		gun_cooldown = 120;
		gamepad_set_vibration(gun_in_control, 1, 1);
		instance_create_layer(x+9,y,"Instances_bullet",obj_shell2);
		alarm[0] = 30;
	}
	if(gun_cooldown>0){
		gun_cooldown--;
		gun_cooldown = max(0,gun_cooldown);
		image_speed = 0;
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
	gun_cooldown--;
	gun_cooldown = max(0,gun_cooldown);
}