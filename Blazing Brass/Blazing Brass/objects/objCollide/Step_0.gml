if(instance_exists(objControl))
	x += objControl.GlobalMovement;

if(x < (-(room_width/2))) instance_destroy();