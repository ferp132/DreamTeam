//This turret detects if an obstruction free view to the player exists before rotating
//x = room_width/2;
//y = room_height/2 + 15;

los = room_width/2;//the line of sight of the turret, 300 pixels
rspeed = 5;//the speed at which the turret rotates
distance_to_player = 0;//distance between the turret and player
active = false;//turret inactive at start
FireRate = 30;
ShootDelay = 0;

HP = 25;