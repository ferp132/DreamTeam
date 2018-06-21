if LastAction != 5{
point_direction(x,y,objTarget.x,objTarget.y)

if(cooldown <= 0)
{
	instance_create_layer(x,y,"Instances_bullet",obj_ememybullet);
	cooldown = 30;
	objBoss.LastAction = 5;
}
else{
	cooldown--;
}
}