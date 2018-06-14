if InRange = 1
{
	if(cooldown <= 0){
	instance_create_layer(x,y,"Instances_bullet",objBaloonBomb);
	cooldown = 60;
}
else{
	cooldown--;
}
}