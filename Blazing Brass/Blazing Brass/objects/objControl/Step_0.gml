#region Carriage Spawner
if(FloorSpawnTimer <= 0 && room_get_name(room) == "room0")
{
	
	InitializeCarriages(2);
	FloorSpawnTimer = SpawnTimer;
}

FloorSpawnTimer--;
#endregion


if(!instance_exists(objPlayer)) instance_create_layer(x,y,"Instances", objPlayer); 

if(keyboard_check(ord("R"))) room_restart();