//draw_set_color(c_white);
draw_text_colour(50, 30,"Controller Connected: "+ string(gamepad_is_supported()),c_white,c_white,c_gray,c_dkgray,1)
//draw_text(50, 30, "Controller Connected: " + string(gamepad_is_supported()));
draw_text_colour(50, 800,"HP: " + string(obj_Tankbody.hp),c_white,c_white,c_gray,c_dkgray,1)
//draw_text(50, 800, "HP: " + string(obj_Tankbody.hp));

if(instance_exists(obj_UAV)){
	draw_text_colour(50, 820, "UAV_Time_Limit: " + string(obj_UAV.time_limit),c_white,c_white,c_gray,c_dkgray,1);
	draw_text_color(50, 840, "UAV_HP: " + string(obj_UAV.hp),c_white,c_white,c_gray,c_dkgray,1);
}
else{
	if(obj_UAVcontrol.uav_cooldown<=0){
		draw_text_colour(50, 820, "UAV is Ready.",c_white,c_white,c_gray,c_dkgray,1);
	}
	else{
		draw_text_color(50, 820, "UAV Cool down:"+string(obj_UAVcontrol.uav_cooldown),c_white,c_white,c_gray,c_dkgray,1);
	}
}

draw_text_colour(50, 860,"HP: " + string(objBoss.hp),c_white,c_white,c_gray,c_dkgray,1)
