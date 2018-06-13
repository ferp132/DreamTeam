/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 367EE837
/// @DnDArgument : "code" "//This turret detects if an obstruction free view to the player exists before rotating$(13_10)//x = room_width/2;$(13_10)//y = room_height/2 + 15;$(13_10)$(13_10)alarm [0]=0;$(13_10)los = 300;//the line of sight of the turret, 300 pixels$(13_10)rspeed = 5;//the speed at which the turret rotates$(13_10)distance_to_player = 10000;//distance between the turret and player$(13_10)active = false;//turret inactive at start"
//This turret detects if an obstruction free view to the player exists before rotating
//x = room_width/2;
//y = room_height/2 + 15;

alarm [0]=0;
los = 300;//the line of sight of the turret, 300 pixels
rspeed = 5;//the speed at which the turret rotates
distance_to_player = 10000;//distance between the turret and player
active = false;//turret inactive at start