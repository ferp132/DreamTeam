//---------Variables
//-----Horizontal vars
HMovement		= 0;	//-----Actual Movement to be applied to the players x
HSpeed			= 20;	//-----Mow much the player can move per step
HInput			= 0;	//-----Players Right-Left Input
Acceleration	= HSpeed/3;
//-----Vertical Vars
VMovement		= 0;	//-----Actual Movement to be applied to players Y
VSpeed			= -23;	//-----How powerful the players jump is (negative = up)
VInput			= 0;	//-----Players Up Input for going up ladders
JInput			= 0;	//-----Input For Jumps

instance_create_layer(x, y, "Instances", objArm);

Gravity			= 1.8;