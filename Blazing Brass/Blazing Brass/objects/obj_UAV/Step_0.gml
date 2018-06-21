time_limit--;
if(hp<=0||time_limit<=0){
	obj_UAVcontrol.uav_cooldown = 120*room_speed;
	instance_destroy();
}