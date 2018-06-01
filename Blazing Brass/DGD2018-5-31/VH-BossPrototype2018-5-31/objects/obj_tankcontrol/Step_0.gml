if(tankcontrol!=0){
	obj_Tankbody.image_angle -= gamepad_axis_value(0,gp_axislh);
	
	if(gamepad_button_check(0,gp_shoulderrb)){
		tank_speed += 0.15;
		tank_speed = min(5,tank_speed);
	}
	if(gamepad_button_check(0,gp_shoulderlb)){
		tank_speed -= 0.5;
		tank_speed = max(-2.5,tank_speed);
	}
	if(!(gamepad_button_check(0,gp_shoulderlb)||gamepad_button_check(0,gp_shoulderrb))){
		if(abs(tank_speed>0)){
			tank_speed -= fraction;
			tank_speed = max(0,tank_speed);
		}
		if(abs(tank_speed<0)){
			tank_speed += fraction;
			tank_speed = min(0,tank_speed);
		}
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
	if(abs(tank_speed>0)){
			tank_speed -= fraction;
			tank_speed = max(0,tank_speed);
		}
		if(abs(tank_speed<0)){
			tank_speed += fraction;
			tank_speed = min(0,tank_speed);
		}
}