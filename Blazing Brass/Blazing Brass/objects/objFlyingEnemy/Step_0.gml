//This script should allow flying enemies to float about firing at the train
//by default but to attempt to retreat from bullet fire

//if instance_exists(objbullet)
//{
//	if distance_to_object(objbullet) < 128
//	{
//    playerdirection = point_direction(x,y,objbullet.x,objbullet.y)
//    direction = playerdirection+180
//    speed = 3
//	}
//} 
//	if !instance_exists(objbullet)
//	{
//    direction = point_direction(x,y,objbullet.x,objbullet.y)
//	if(cooldown <= 0)
//	{
//	instance_create_layer(obj_testenemy.x,obj_testenemy.y,"Instances_bullet",obj_ememybullet);
//	cooldown = 60;
//	}
//else
//{
//	cooldown--;
//}
//}

//switch (state)
//{
//    case e_state.idle:
//    {
//        HMovement = 0;
//        VMovement = (min(7,VMovement+5));
//        if (distance_to_object(obj_PlayerParent) < 192) state = e_state.chase;
//    }
//    break;
//    case e_state.chase:
//    {
//        dir = sign(obj_PlayerParent.x - x);
//        HMovement = dir * 2;
//        VMovement = (min(7,VMovement+ 5));
//        if (distance_to_object(obj_PlayerParent) > 256) state = e_state.idle;
//    }
//    break;
//}

if(cooldown<=0&&hp>=0){
	flying_enemy_bullet = instance_create_layer(x,y,"Instances_bullet",obj_ememybullet);
	flying_enemy_bullet.direction = point_direction(x,y,obj_Tankbody.x,obj_Tankbody.y);
	image_xscale = 0.5;
	image_yscale = -0.5;
	image_angle = point_direction(x,y,obj_Tankbody.x,obj_Tankbody.y);
	cooldown = 60;
}
else{
	cooldown--;
}