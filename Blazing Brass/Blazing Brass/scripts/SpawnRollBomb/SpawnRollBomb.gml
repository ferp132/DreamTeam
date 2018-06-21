if LastAction != 2{
move_towards_point(x, objTarget.y, 1)

{
	instance_create_layer(x,choose(250,500,750),"Instances_bullet",obj_WARNING)
	objBoss.LastAction = 2;
}
}
//if 128 < objTarget.y < 256
//{
//	instance_create_layer(x,300,"Instances_bullet",objRollBomb)
//}
//else if 384 < objTarget.y < 512 
//{
//	instance_create_layer(x,600,"Instances_bullet",objRollBomb)
//}
//else if 640 < objTarget.y < 768
//{
//	instance_create_layer(x,900,"Instances_bullet",objRollBomb)
//}
//else
//{
//	image_alpha = 0.5;
//}