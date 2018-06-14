//Variables needed for spawned units
enum e_state
{
    idle,
    chase
}

//Boss variables
hitpoints = 30000;
speed = 0;
cooldown = 30;

//Set up Control Alarm to act and perform various scripts
alarm[0] = 60;
