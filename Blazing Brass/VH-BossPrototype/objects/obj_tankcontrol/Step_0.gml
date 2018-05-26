if(tankcontrol!=0){
	obj_Tankbody.image_angle -= gamepad_axis_value(0,gp_axislh);
}
else{
	cooldown--;
	cooldown = max(0,cooldown);
}