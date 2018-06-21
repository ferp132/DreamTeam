//Control Alarm. Boss makes desicions on how to act once per itterations of Alarm

if (BossDead = false)
{
//Movement loop stuck for some reason....
switch (irandom_range(1,5))
{
	//Spawns Flying Enemies
case 1:
tar_x = random_range(room_width*0.2,room_width*0.3);
tar_y = random_range(room_height*0.2, room_height*0.3);
tar_dir = random(360);
tar_arc = random_range(-10,10);

SpawnFlyingEnemies(tar_x,tar_y,tar_dir,8,tar_arc,id);
break;

case 2:
//Creates Rolling Bomb, must be dodged!
SpawnRollBomb();
break;

case 3:
//Moves the boss up + down, currently allowing for outer room travel
choose(move_towards_point(x, 400, 2.5),move_towards_point(x, 600, 2.5),move_towards_point(x, 800, 2.5))
break;

case 4:
//Makes Balloon if room is available
CreateBaloon()
break;

case 5:
//Prrt prrt prrt
MachineGun()
break;
}

//This line resets the logic loop
alarm[0]=60;
}
else
{

}