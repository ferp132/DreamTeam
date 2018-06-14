MoveDir = sign(HMovement);
scrPropCollision();

if(y < -room_height || x < -room_width || PropHP <= 0) instance_destroy();
