if(guncontrol!=0){
	obj_Maingun.image_angle -= gamepad_axis_value(0,gp_axislh);
	if(gamepad_button_check_pressed(0,gp_shoulderrb)){
		instance_create_layer(obj_Maingun.x+5,obj_Maingun.y,"Instances_bullet",obj_bullet);
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}