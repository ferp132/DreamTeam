
//Carriage Spawner
#region
if(FloorSpawnTimer == 0){
	instance_create_layer(room_width*2, room_height - 100,"Instances", obj_floor);
	FloorSpawnTimer = FloorSpawnRate;
}

FloorSpawnTimer--;
#endregion