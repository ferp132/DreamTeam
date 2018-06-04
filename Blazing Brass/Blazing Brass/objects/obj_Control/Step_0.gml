
//Carriage Spawner
#region
if(FloorSpawnTimer <= 0){
	

	//NextRoom = room_duplicate(TestRoom1);
	//room_goto(NextRoom);
	
	//room_assign(TempRoom, TestRoom2);
	//room_goto(TempRoom);

	instance_create_layer(room_width*2, room_height - 100,"Instances", obj_floor);
	FloorSpawnTimer = SpawnTimer;
}

FloorSpawnTimer--;
#endregion


if(!instance_exists(objPlayerLouisEdit)) instance_create_layer(x,y,"Instances", objPlayerLouisEdit); 