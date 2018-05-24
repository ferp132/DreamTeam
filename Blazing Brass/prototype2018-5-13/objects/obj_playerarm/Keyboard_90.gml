/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70FFB77F
/// @DnDArgument : "code" "if(obj_player.cooldown <= 0){$(13_10)	instance_create_layer(x,y-16,"Instances_bullet",obj_bullet);$(13_10)	obj_player.cooldown = 5;$(13_10)}$(13_10)"
if(obj_player.cooldown <= 0){
	instance_create_layer(x,y-16,"Instances_bullet",obj_bullet);
	obj_player.cooldown = 5;
}