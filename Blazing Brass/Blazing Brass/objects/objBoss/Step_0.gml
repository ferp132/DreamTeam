//Actions made every step, regardless of any other action being taken

point_direction(x,y,objTarget.x,objTarget.y)

if(cooldown <= 0){
	instance_create_layer(x,y,"Instances_bullet",obj_ememybullet);
	cooldown = 20;
}
else{
	cooldown--;
}


