/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 3DAD19EA
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
x = obj_player.x;
y = obj_player.y;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AA94848
/// @DnDArgument : "code" "///Spins arm and shoots$(13_10)$(13_10)image_angle=point_direction(x,y,mouse_x,mouse_y);$(13_10)"
///Spins arm and shoots

image_angle=point_direction(x,y,mouse_x,mouse_y);