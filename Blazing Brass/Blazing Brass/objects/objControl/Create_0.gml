FloorSpawnTimer = 0;
GlobalMovement =-5;
SpawnTimer = 2200 / abs(GlobalMovement);
ScrapCounter = 0;

if(room_get_name(room) == "room0")
	InitializeCarriages(1);