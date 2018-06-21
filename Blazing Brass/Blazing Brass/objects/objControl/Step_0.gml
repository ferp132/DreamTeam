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

if(ScrapCounter  >= 100)
{
	ScrapCounter = 0;
	Upgrade = choose(1,2,3,4);
	
	switch(Upgrade)
	{
	case 1:
	{
		PlayerBulletSpeedMultiplier += 0.1;
//		show_message("UpgradeBulletSpeed");
		break;
	}
	case 2:
	{
		PlayerFireRateMultiplier -= 0.1;
//		show_message("UpgradeFireRate");
		break;
	}
	case 3:
	{
		PlayerDamageMultiplier += 0.1;
//		show_message("UpgradeDamage");
		break;
	}
	case 4:
	{
		PlayerHoverTimeMultiplier += 0.1;
	//	show_message("UpgradeHoverTime");
		break;
	}
	}
	
}

//Set Player Health Bar & Scrap Bar
if(instance_exists(objPlayer))
{
ArmatureHealth = objPlayer.PlayerHP;
objCharacterFace.PlayerHP = ArmatureHealth;

ArmatureScrap = ScrapCounter;
objCharacterFace.PlayerScrap = ArmatureScrap;
}

if(!instance_exists(objPlayer)) instance_create_layer(x,y,"Instances", objPlayer); 

if(keyboard_check(ord("R"))) room_restart();