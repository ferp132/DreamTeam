if LastAction !=3{
if place_free(1500,124,)
{
	objBoss.LastAction = 3;
	instance_create_layer(1500,124,"Instances",objBaloon)
}
else
{
	alarm[0] = 30;
}
}