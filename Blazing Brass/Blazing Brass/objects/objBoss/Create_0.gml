//Variables needed for spawned units
enum e_state
{
    idle,
    chase
}

//Boss variables
hp = 15000;
speed = 0;
cooldown = 10;
LastAction = 0;
BossDead = true;
randomize();

//Set up Control Alarm to act and perform various scripts
alarm[0] = 60;

