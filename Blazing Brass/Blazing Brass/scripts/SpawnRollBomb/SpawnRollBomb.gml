if 128 < objTarget.y < 256
{
	instance_create_layer(x,300,"Instances_bullet",objRollBomb)
}
else if 384 < objTarget.y < 512 
{
	instance_create_layer(x,600,"Instances_bullet",objRollBomb)
}
else if 640 < objTarget.y < 768
{
	instance_create_layer(x,900,"Instances_bullet",objRollBomb)
}
else
{
	image_alpha = 0.5;
}