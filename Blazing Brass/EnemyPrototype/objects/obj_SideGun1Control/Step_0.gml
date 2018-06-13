/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7BF9E875
/// @DnDArgument : "code" "if(guncontrol!=0){$(13_10)	obj_SideGun1.image_angle -= gamepad_axis_value(0,gp_axislh);$(13_10)	$(13_10)	//Fire!$(13_10)	if(gamepad_button_check_pressed(0,gp_shoulderrb)){$(13_10)		instance_create_layer(obj_Maingun.x+5,obj_Maingun.y,"Instances_bullet",obj_bullet);$(13_10)	}$(13_10)}$(13_10)else{$(13_10)	cooldown--;$(13_10)	cooldown = max(0,cooldown);$(13_10)}$(13_10)"
if(guncontrol!=0){
	obj_SideGun1.image_angle -= gamepad_axis_value(0,gp_axislh);
	
	//Fire!
	if(gamepad_button_check_pressed(0,gp_shoulderrb)){
		instance_create_layer(obj_Maingun.x+5,obj_Maingun.y,"Instances_bullet",obj_bullet);
	}
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}