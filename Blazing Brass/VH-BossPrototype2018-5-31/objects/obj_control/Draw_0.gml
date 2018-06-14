draw_set_color(c_white);
draw_text(50, 30, "Controller Connected: " + string(gamepad_is_supported()));
draw_text(50, 800, "HP: " + string(obj_Tankbody.hp));

if(instance_exists(obj_UAV)){
	draw_text(50, 820, "UAV_Time_Limit: " + string(obj_UAV.time_limit));
	draw_text(50, 840, "UAV_HP: " + string(obj_UAV.hp));
}
else{
	if(obj_UAVcontrol.uav_cooldown<=0){
		draw_text(50, 820, "UAV is Ready.");
	}
	else{
		draw_text(50, 820, "UAV Cool down:"+string(obj_UAVcontrol.uav_cooldown));
	}
}
