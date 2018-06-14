if(cooldown <= 0){
	instance_create_layer(obj_testenemy.x,obj_testenemy.y,"Instances_bullet",obj_ememybullet);
	cooldown = 60;
}
else{
	cooldown--;
}