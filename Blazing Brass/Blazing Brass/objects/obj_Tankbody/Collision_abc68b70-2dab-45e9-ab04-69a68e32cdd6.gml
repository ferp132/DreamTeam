/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FB876EE
/// @DnDArgument : "code" "obj_Tankbody.hp -= 10;"
obj_Tankbody.hp -= 10;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6002386A
/// @DnDApplyTo : other
with(other) instance_destroy();