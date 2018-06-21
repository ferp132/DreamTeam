if InRange = 1
{
	if(cooldown <= 0){
	instance_create_layer(x-50,y + 150,"Instances_bullet",objBaloonBomb);
	cooldown = 240;
}
else{
	cooldown--;
}
}