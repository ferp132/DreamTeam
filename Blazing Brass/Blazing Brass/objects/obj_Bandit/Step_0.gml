switch (state)
{
    case e_state.idle:
    {
        HMovement = 0;

		sprite_index = sprBanditIdle

		if (distance_to_object(objPlayer) < room_width)
			state = e_state.chase;
    }
    break;
    case e_state.chase:
    {

	sprite_index = sprBanditWalking

	if(instance_exists(objPlayer))
	{
        dir = sign(objPlayer.x - x);
        if (dir < 0) HMovement = dir * HSpeed + objControl.GlobalMovement;
		else if (dir > 0) HMovement = dir * HSpeed;
		
        if ((distance_to_object(objPlayer) - 100) > room_width) state = e_state.idle;
	}
	}
    break;
}

//Horizontal Collision
scrHorzCollision();

if (HMovement == 0) x += objControl.GlobalMovement;
else x += HMovement;

//Vertical Collision
scrVertCollision();
if(!place_meeting(x, y + 1, objCollide)) VMovement += Gravity;
y += VMovement;