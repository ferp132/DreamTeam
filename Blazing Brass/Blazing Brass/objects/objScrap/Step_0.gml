image_angle += 45;


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

if(x < -room_width/2) instance_destroy();