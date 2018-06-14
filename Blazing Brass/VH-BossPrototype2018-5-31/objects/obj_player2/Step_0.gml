//y -= obj_tankcontrol.tank_speed;

if(canmove==0){
}
else{
	if(place_free(x,y+5)&&gravity_switch!=0){
		gravity = 0.5;
	}
	else{
		gravity = 0;
		//y+=1;
	}
	
	if(keyboard_check(ord("A"))||gamepad_axis_value(1,gp_axislh)<0){
		motion_add(270 - 90,0.2);
		speed = min(5,speed);
	}
		
	if(keyboard_check(ord("D"))||gamepad_axis_value(1,gp_axislh)>0){
		motion_add(90 - 90,0.2);
		speed = min(5,speed);
	}

	if(!(keyboard_check(ord("D")) || keyboard_check(ord("A"))||gamepad_axis_value(1,gp_axislh)!=0)){
		speed -= fraction;
		speed = max(0,speed)
	}
}



