if(guncontrol!=0){
	//image_angle -= gamepad_axis_value(gun_in_control,gp_axislh);
	
	//Fire!
	if(gamepad_button_check(gun_in_control,gp_shoulderrb)){
		main_gun_bullet = instance_create_layer(x,y,"Instances_bullet",obj_bullet);
		main_gun_bullet.image_angle = image_angle+90;
		main_gun_bullet.direction = image_angle+8+random_range(-5,5);
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}