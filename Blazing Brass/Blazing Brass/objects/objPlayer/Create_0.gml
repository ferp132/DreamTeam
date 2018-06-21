event_inherited();
MyArms = noone;
with (instance_create_depth(x, y, -1, objArm))
{
	MyOwner = other.id;
	other.MyArms = id;
}

//-----Player Health
PlayerHP = 100;
PlayerHPMultiplier = 1;

//-----Player Attack Values
BasePlayerDamage = 10;
BasePlayerBulletSpeed = 50;
BasePlayerFireRate = 15;
BasePlayerHoverTime = 120;

PlayerDamage = BasePlayerDamage;
PlayerBulletSpeed = BasePlayerBulletSpeed;
PlayerFireRate = BasePlayerFireRate;
HoverTime = BasePlayerHoverTime;

//Player Input Variables
HInput = 0;	//Horizontal Input
VInput = 0;	//Vertical Input
JInput = 0;	//Jump Input
AInput = 0; //Activate Input
ShootInput = 0;

//Player Hover
CanHover			= 0;
HoverCounter		= HoverTime * objControl.PlayerHoverTimeMultiplier;


//-----Player States
enum PlayerState
{
	IDLE = 0,
	RUN,
	JUMP,
	FALL,
	STARTHOVER,
	HOVER,
	ENDHOVER,
	ACTIVATE,
	ATTACK,
	DEAD,
}

State = PlayerState.IDLE;

//-----Player Sprites

SpriteIdle		= sprPlayer1Idle;
SpriteRun		= sprPlayer1Run;
SpriteJump		= sprPlayer1Jump;
SpriteFall		= sprPlayer1Fall;
SpriteHover		= sprPlayer1Hover;
SpriteActivate	= sprPlayer1Activate;
SpriteDead		= sprPlayer1Death;

//--- Controler Inputs
MyController = 0;
if(gamepad_is_connected(0))
{
	MyController = 0;
	gamepad_set_axis_deadzone(MyController, 0.1);
}
else						MyController = -1;

LeftKey = "A";
RightKey = "D";
DownKey = "S";
UpKey = "W";
//ActivateKey = "F";
JumpKey = vk_space;
ShootKey = mb_left;