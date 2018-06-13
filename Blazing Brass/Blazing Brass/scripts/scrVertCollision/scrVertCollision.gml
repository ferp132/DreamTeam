if(place_meeting(x, y + VMovement, objCollide))
{
	while(!place_meeting(x, y+sign(VMovement), objCollide)) 
	{
		y += sign(VMovement);
		image_index = floor(VMovement/image_number);
		draw_self();
	}
	VMovement = 0;
}