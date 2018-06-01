if(canmove==0){
}
else{
	if(place_free(x,y+1)){
		gravity = 0.5;
	}
	else{
		gravity = 0;
	}
	
	if(keyboard_check(ord("A"))||gamepad_axis_value(0,gp_axislh)<0){
		motion_add(270 - 90,0.2);
		speed = min(5,speed);
	}
		
	if(keyboard_check(ord("D"))||gamepad_axis_value(0,gp_axislh)>0){
		motion_add(90 - 90,0.2);
		speed = min(5,speed);
	}

	if(!(keyboard_check(ord("D")) || keyboard_check(ord("A"))||gamepad_axis_value(0,gp_axislh)!=0)){
		speed -= fraction;
		speed = max(0,speed)
	}
}



