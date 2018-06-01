if(keyboard_check(ord("W"))||gamepad_axis_value(0,gp_axislv)<0){
	vspeed = 0;
	y-=2;
}
		
if(keyboard_check(ord("S"))||gamepad_axis_value(0,gp_axislv)>0){
	if(place_free(x,y+2)){
		vspeed = 0;
		y+=2;
	}
	}