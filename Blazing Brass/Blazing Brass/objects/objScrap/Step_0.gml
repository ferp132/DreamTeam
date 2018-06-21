image_angle += sign(HMovement) * Spin;
scrHorzCollision();
x += HMovement + objControl.GlobalMovement;
scrVertCollision();
if(!place_meeting(x, y + 1, objCollide)) VMovement += Gravity;
else HMovement = lerp(HMovement, 0, 0.15);
y += VMovement;

if(ShineCountDown <= 0)
{
	ShineCountDown = 180;
	image_speed = 8;
}

if(image_index == 3)
{
	image_index = 0;
	image_speed = 0;
}

ShineCountDown--;

if(y < -room_height/2) instance_destroy();