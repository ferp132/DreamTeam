if(HP <= 0) instance_destroy();

if(instance_exists(objPlayer))
{
	distance_to_player = distance_to_object(objPlayer);					//update the distance to player

if (distance_to_player <= los && collision_line(x,y,objPlayer.x, objPlayer.y, objCollide, false, true) == noone)
{
    pointdir = point_direction(x, y, objPlayer.x, objPlayer.y);			//find the direction to the player
    //image_angle += sin(degtorad(pointdir - image_angle)) * rspeed;		//rotate smoothly

    active = true;
	
	if (ShootDelay <= 0)
	{
		instance_create_layer(x,y,"Instances",obj_enmbullet);
		ShootDelay = FireRate;
	}
}
else active = false;
}

x += objControl.GlobalMovement;
ShootDelay--;

