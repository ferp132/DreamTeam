//Actions made every step, regardless of any other action being taken

if (BossDead == false)
{
point_direction(x,y,objTarget.x,objTarget.y)

if(cooldown <= 0){
	instance_create_layer(x,y,"Instances_bullet",obj_ememybullet);
	cooldown = 20;
}
else{
	cooldown--;
}
}

//If the boss dies
move_towards_point(x, 600, 0.5)
if (cooldown <=0)
{
	if(cooldown <= 0)
	{
	instance_create_layer(random_range(x-92, x),random_range(y-150,y+150),"Instances_bullet",objBossExplosion);
	cooldown = 20;

	}
}
else{
	cooldown--;
}


