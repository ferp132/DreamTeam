event_inherited();
with (instance_create_depth(x, y, -1, objArm))
{
	MyOwner = other.id;
}

//-----Player Health
PlayerHP = 100;
PlayerHPMultiplier = 1;

//-----Player Attack Values
PlayerDamage = 10;
PlayerBulletSpeed = 100;
PlayerFireRate = 15;

//Player Input Variables
HInput = 0;	//Horizontal Input
VInput = 0;	//Vertical Input
JInput = 0;	//Jump Input
AInput = 0; //Activate Input
ShootInput = 0;

//Player Hover
CanHover			= 0;
HoverTime			= 120;
HoverTimeMultiplier = 1;
HoverCounter		= HoverTime * HoverTimeMultiplier;


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

MyController = -1;
LeftKey = "A";
RightKey = "D";
DownKey = "S";
UpKey = "W";
ActivateKey = "F";
JumpKey = vk_space;
ShootKey = mb_left;