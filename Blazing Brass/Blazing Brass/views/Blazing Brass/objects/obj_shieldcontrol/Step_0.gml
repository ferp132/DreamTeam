if(shieldcontrol!=0){
	if(obj_shield.image_angle>=45){
		if(sign(gamepad_axis_value(shield_in_control,gp_axislh))>0){
			obj_shield.image_angle -= gamepad_axis_value(shield_in_control,gp_axislh);
			obj_shieldF.image_angle -= gamepad_axis_value(shield_in_control,gp_axislh);
		}
	}
	else if(obj_shield.image_angle<=-30){
		if(sign(gamepad_axis_value(shield_in_control,gp_axislh))<0){
			obj_shield.image_angle -= gamepad_axis_value(shield_in_control,gp_axislh);
			obj_shieldF.image_angle -= gamepad_axis_value(shield_in_control,gp_axislh);
		}
	}
	else{
		obj_shield.image_angle -= gamepad_axis_value(shield_in_control,gp_axislh);
		obj_shieldF.image_angle -= gamepad_axis_value(shield_in_control,gp_axislh);
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}