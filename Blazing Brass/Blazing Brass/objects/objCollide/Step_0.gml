if(instance_exists(obj_Control))
	x += obj_Control.GlobalMovement;

if(x < (0 - room_width * 2)) instance_destroy();