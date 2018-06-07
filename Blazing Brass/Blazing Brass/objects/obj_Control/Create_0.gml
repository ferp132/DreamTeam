FloorSpawnTimer = 0;
GlobalMovement = -10;
SpawnTimer = 2200 / abs(GlobalMovement);

if(room_get_name(room) == "room0")
	InitializeCarriages(1);