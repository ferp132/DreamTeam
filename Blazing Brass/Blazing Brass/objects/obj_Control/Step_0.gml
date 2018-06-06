
//Room Spawner
#region
if(FloorSpawnTimer <= 0 && room_get_name(room) == "room0")
{
	
	InitializeCarriages(2);
	FloorSpawnTimer = SpawnTimer;
}

FloorSpawnTimer--;
#endregion


if(!instance_exists(objPlayerLouisEdit)) instance_create_layer(x,y,"Instances", objPlayerLouisEdit); 