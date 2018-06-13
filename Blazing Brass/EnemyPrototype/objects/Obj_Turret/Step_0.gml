/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31B42E69
/// @DnDArgument : "code" "distance_to_player = sqrt(sqr(x - obj_PlayerParent.x) + sqr(y - obj_PlayerParent.y));//update the distance to player$(13_10)$(13_10)if (distance_to_player <= los && !collision_line(x,y,obj_PlayerParent.x,obj_PlayerParent.y,objCollide,false,true))$(13_10){$(13_10)    pointdir = point_direction(x, y, obj_PlayerParent.x, obj_PlayerParent.y);//find the direction to the player$(13_10)    image_angle += sin(degtorad(pointdir - image_angle)) * rspeed;//rotate smoothly$(13_10)$(13_10)    active = true;$(13_10)			alarm [0] = 10;$(13_10)			instance_create_layer(Obj_Turret.x,Obj_Turret.y,"Instances_bullet",obj_enmbullet);$(13_10)}$(13_10)else$(13_10){$(13_10)    active = false;$(13_10)}	 $(13_10)"
distance_to_player = sqrt(sqr(x - obj_PlayerParent.x) + sqr(y - obj_PlayerParent.y));//update the distance to player

if (distance_to_player <= los && !collision_line(x,y,obj_PlayerParent.x,obj_PlayerParent.y,objCollide,false,true))
{
    pointdir = point_direction(x, y, obj_PlayerParent.x, obj_PlayerParent.y);//find the direction to the player
    image_angle += sin(degtorad(pointdir - image_angle)) * rspeed;//rotate smoothly

    active = true;
			alarm [0] = 10;
			instance_create_layer(Obj_Turret.x,Obj_Turret.y,"Instances_bullet",obj_enmbullet);
}
else
{
    active = false;
}