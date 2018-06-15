// Carriage Spawner
if(FloorSpawnTimer <= 0 && room_get_name(room) == "room0")
{
	
	WagonType = choose(1,2,3,4,5);
	
	InitializeCarriages(2, WagonType);
	
	switch(WagonType)
	{
		case 1:
		{
			FloorSpawnTimer = Wagon1SpawnTimer;
			break;
		}
		case 2:
		{
			FloorSpawnTimer = Wagon2SpawnTimer;
			break;
		}
		case 3:
		{
			FloorSpawnTimer = Wagon3SpawnTimer;
			break;
		}
		case 4:
		{
			FloorSpawnTimer = Wagon4SpawnTimer;
			break;
		}
		case 5:
		{
			FloorSpawnTimer = Wagon5SpawnTimer;
			break;
		}
	}
	
}

FloorSpawnTimer--;


if(!instance_exists(objPlayer)) instance_create_layer(x,y,"Instances", objPlayer); 

if(keyboard_check(ord("R"))) room_restart();