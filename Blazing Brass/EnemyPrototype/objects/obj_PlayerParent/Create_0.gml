/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B6F8F8F
/// @DnDArgument : "code" "//---------Variables$(13_10)//-----Horizontal vars$(13_10)HMovement		= 0;	//-----Actual Movement to be applied to the players x$(13_10)HSpeed			= 8;	//-----Mow much the player can move per step$(13_10)HInput			= 0;	//-----Players Right-Left Input$(13_10)Acceleration	= 1.2;$(13_10)//-----Vertical Vars$(13_10)VMovement		= 0;	//-----Actual Movement to be applied to players Y$(13_10)VSpeed			= -24;	//-----How powerful the players jump is (negative = up)$(13_10)VInput			= 0;	//-----Players Up/Space Input$(13_10)$(13_10)Gravity			= 1;$(13_10)$(13_10)//Matthew Implentation$(13_10)lives = 5;$(13_10)playerjet = 100;$(13_10)cooldown = 0;$(13_10)fraction = 0.3;$(13_10)VJump = 0;$(13_10)canmove = 1;$(13_10)gamepad_set_axis_deadzone(0,0.1);$(13_10)"
//---------Variables
//-----Horizontal vars
HMovement		= 0;	//-----Actual Movement to be applied to the players x
HSpeed			= 8;	//-----Mow much the player can move per step
HInput			= 0;	//-----Players Right-Left Input
Acceleration	= 1.2;
//-----Vertical Vars
VMovement		= 0;	//-----Actual Movement to be applied to players Y
VSpeed			= -24;	//-----How powerful the players jump is (negative = up)
VInput			= 0;	//-----Players Up/Space Input

Gravity			= 1;

//Matthew Implentation
lives = 5;
playerjet = 100;
cooldown = 0;
fraction = 0.3;
VJump = 0;
canmove = 1;
gamepad_set_axis_deadzone(0,0.1);