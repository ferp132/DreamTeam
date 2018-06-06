if(instance_exists(obj_Control))
	x += obj_Control.GlobalMovement;

if(x < (-(room_width/2))) instance_destroy();