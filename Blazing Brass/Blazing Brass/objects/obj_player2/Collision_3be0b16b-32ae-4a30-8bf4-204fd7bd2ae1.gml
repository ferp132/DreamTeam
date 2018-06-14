if(keyboard_check(ord("W"))||gamepad_axis_value(1,gp_axislv)<0){
	gravity_switch = 0;
	vspeed = 0;
	y-=4;
}
		
if(keyboard_check(ord("S"))||gamepad_axis_value(1,gp_axislv)>0){
	gravity_switch = 0;
	if(place_free(x,y+5)){
		vspeed = 0;
		y+=4;
	}
	}
	
alarm[0] = 10;