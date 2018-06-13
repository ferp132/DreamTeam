/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B1116F4
/// @DnDArgument : "code" "if(keyboard_check(ord("W"))||gamepad_axis_value(0,gp_axislv)<0){$(13_10)	vspeed = 0;$(13_10)	y-=2;$(13_10)}$(13_10)		$(13_10)if(keyboard_check(ord("S"))||gamepad_axis_value(0,gp_axislv)>0){$(13_10)	if(place_free(x,y+2)){$(13_10)		vspeed = 0;$(13_10)		y+=2;$(13_10)	}$(13_10)	}$(13_10)"
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