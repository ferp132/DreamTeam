if(tankcontrol!=0){
	//obj_Tankbody.image_angle -= gamepad_axis_value(tank_in_control,gp_axislh);
	
	if(gamepad_button_check(tank_in_control,gp_shoulderrb)){
		//tank_speed += 0.15;
		//tank_speed = min(5,tank_speed);
		tank_speed += 0.1;
		tank_speed = min(1.25,tank_speed);
	}
	if(gamepad_button_check(tank_in_control,gp_shoulderlb)){
		tank_speed -= 0.1;
		tank_speed = max(-1.25,tank_speed);
	}
	if(!(gamepad_button_check(tank_in_control,gp_shoulderlb)||gamepad_button_check(tank_in_control,gp_shoulderrb))){
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
if(obj_Tankbody.y>=700){
		if(tank_speed<0){
			tank_speed = 0;
		}
	}
	else if(obj_Tankbody.y<=200){
		if(tank_speed>0){
			tank_speed = 0;
		}
	}

obj_player1.y -= tank_speed;
//obj_player2.y -= tank_speed;
with(obj_rwall)y -= obj_tankcontrol.tank_speed;

obj_tankcontrol.y -= tank_speed;
obj_Tankbody.y -= tank_speed;
obj_UAVcontrol.y -= tank_speed;
obj_subguncontrol.y -= tank_speed;
obj_subguncontrol2.y -= tank_speed;
obj_mainguncontrol.y -= tank_speed;
obj_shieldcontrol.y -= tank_speed;
obj_shield.y -= tank_speed;
obj_shieldF.y -= tank_speed;
