/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2586A3B6
/// @DnDArgument : "code" "if (FloorCount = 1||2)$(13_10){$(13_10)	instance_create_layer(x + 516, y,"Instances_bullet", obj_floor)$(13_10)	FloorCount +=1; $(13_10)}"
if (FloorCount = 1||2)
{
	instance_create_layer(x + 516, y,"Instances_bullet", obj_floor)
	FloorCount +=1; 
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 08591A4D
/// @DnDArgument : "var" "FloorCount"
/// @DnDArgument : "value" "2"
if(FloorCount == 2)
{

}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2637758C
/// @DnDArgument : "xpos" "516"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_floor"
/// @DnDSaveInfo : "objectid" "0f2adc9a-7dcc-429e-9196-ab981e8e60ee"
instance_create_layer(x + 516, y + 0, "Instances", obj_floor);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37FB48D2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "FloorCount"
FloorCount += 1;