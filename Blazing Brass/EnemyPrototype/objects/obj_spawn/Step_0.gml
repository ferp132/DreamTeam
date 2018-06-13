
//Carriage Spawner
#region
if(FloorSpawnTimer <= 0){
	instance_create_layer(room_width*2, room_height - 100,"Instances", obj_floor);
	draw_text(room_width/2, room_height/2 + 75, string(alarm[1]));
	FloorSpawnTimer = obj_floor.SpawnTimer;

}

FloorSpawnTimer--;
#endregion


if(!instance_exists(obj_PlayerParent)) instance_create_layer(x,y,"Instances", obj_PlayerParent); 