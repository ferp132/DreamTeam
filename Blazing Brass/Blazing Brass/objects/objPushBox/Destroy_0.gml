ScrapDrop = choose(1,2,3);

for (i = 0; i < ScrapDrop; i++)
{
with(instance_create_layer(x,y,"Instances", objScrap))
{
	CanMove		= true;
	HMovement	= random_range(-50, 50);
	VMovement	= random_range(-10, -25);
}
}