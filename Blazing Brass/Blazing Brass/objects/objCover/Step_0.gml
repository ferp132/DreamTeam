x += objControl.GlobalMovement;

if(y < -room_height || x < -room_width || CoverHP <= 0) instance_destroy();