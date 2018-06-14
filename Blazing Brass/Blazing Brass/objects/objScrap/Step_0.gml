if(CanMove)
{
scrHorzCollision();

	x += HMovement + objControl.GlobalMovement;
	HMovement = lerp(HMovement, 0, 0.5);

	scrVertCollision();

	if(!place_meeting(x, y + 1, objCollide)) VMovement += Gravity;
	y += VMovement;
}
else x += objControl.GlobalMovement;

if(y < -room_height/2) instance_destroy();