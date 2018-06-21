//This turret detects if an obstruction free view to the player exists before rotating
//x = room_width/2;
//y = room_height/2 + 15;
randomize();

sprite_index = sprTurretIdle;
DetectionRange = room_width/2;//the line of sight of the turret, 300 pixels
RotationSpeed = 10;//the speed at which the turret rotates
Direction = 0;
active = false;//turret inactive at start
FireRate = 30;
ShootDelay = 0;
EnemyDamage = 5;
EnemyFireRate = 180;
EnemyShotRate = 5;
MaxShots = 100;
Shots = 0;
MaxAttackRange = DetectionRange;
EnemyBulletSpeed = 50;
Facing = 1;
EnemyHP = 150;