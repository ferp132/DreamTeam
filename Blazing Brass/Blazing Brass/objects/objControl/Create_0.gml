randomize();
Upgrade = 0;
PlayerBulletSpeedMultiplier = 1;
PlayerFireRateMultiplier = 1;
PlayerDamageMultiplier = 1;
PlayerHoverTimeMultiplier = 1;

FloorSpawnTimer = 0;
GlobalMovement =-20; //-6
Wagon1SpawnTimer = 2145 / abs(GlobalMovement);
Wagon2SpawnTimer = 1900 / abs(GlobalMovement);
Wagon3SpawnTimer = 2145 / abs(GlobalMovement);
Wagon4SpawnTimer = 1750 / abs(GlobalMovement);
Wagon5SpawnTimer = 1850 / abs(GlobalMovement);
ScrapCounter = 0;
DepthCounter = 1;

ArmatureHealth = 0;

if(room_get_name(room) == "room0")
	InitializeCarriages(1, 0);
	
