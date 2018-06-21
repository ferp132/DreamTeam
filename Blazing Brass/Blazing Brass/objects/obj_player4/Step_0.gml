//y -= obj_tankcontrol.tank_speed;

if(canmove==0){
}
else{
	/*if(place_free(x,y+5)&&gravity_switch!=0){
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
	}*/
	move_x = gamepad_axis_value(3,gp_axislh)*spd;
	move_y = 0;
	
	if(!place_meeting(x,y+1,obj_rwall)&&gravity_switch){
		move_y += 2;
	}
	
	if(place_meeting(x+move_x,y,obj_rwall)){
		while(!place_meeting(x+sign(move_x),y,obj_rwall)){
			x+=sign(move_x);
		}
		move_x = 0;
	}
	x += move_x;
	if(place_meeting(x,y+move_y,obj_rwall)){
		while(!place_meeting(x,y+sign(move_y),obj_rwall)){
			y+=sign(move_y);
		}
		move_y = 0;
	}
	y += move_y;
}



