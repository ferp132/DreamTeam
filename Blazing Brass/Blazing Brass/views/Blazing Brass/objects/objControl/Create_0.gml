FloorSpawnTimer = 0;
GlobalMovement =-5;
Wagon1SpawnTimer = 2145 / abs(GlobalMovement);
Wagon2SpawnTimer = 1900 / abs(GlobalMovement);
Wagon3SpawnTimer = 2145 / abs(GlobalMovement);
Wagon4SpawnTimer = 1750 / abs(GlobalMovement);
Wagon5SpawnTimer = 1850 / abs(GlobalMovement);
ScrapCounter = 0;
DepthCounter = 1;

if(room_get_name(room) == "room0")
	InitializeCarriages(1, 0);