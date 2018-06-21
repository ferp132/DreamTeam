/*if(keyboard_check(ord("W"))||gamepad_axis_value(0,gp_axislv)<0){
	//gravity_switch = 0;
	//vspeed = 0;
	y-=4;
}
		
if(keyboard_check(ord("S"))||gamepad_axis_value(0,gp_axislv)>0){
	if(place_free(x,y+5)){
		//gravity_switch = 0;
		//vspeed = 0;
		y+=4;
	}
	}
	
//alarm[0] = 10;*/
move_y = gamepad_axis_value(2,gp_axislv)*spd*2;
	
if(place_meeting(x,y+move_y,obj_rwall)){
	while(!place_meeting(x,y+sign(move_y),obj_rwall)){
		y+=sign(move_y);
	}
	move_y = 0;
}

y += move_y;

gravity_switch = false;
alarm[0] = 2;