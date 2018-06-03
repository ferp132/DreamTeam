
//Carriage Spawner
#region
if(FloorSpawnTimer <= 0){
	instance_create_layer(room_width*2, room_height - 100,"Instances", obj_floor);
	FloorSpawnTimer = obj_floor.SpawnTimer;

}

FloorSpawnTimer--;
#endregion


if(!instance_exists(objPlayerLouisEdit)) instance_create_layer(x,y,"Instances", objPlayerLouisEdit); 