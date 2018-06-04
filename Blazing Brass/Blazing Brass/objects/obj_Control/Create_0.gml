FloorSpawnTimer = 0;
GlobalMovement = -10;
SpawnTimer = sprite_get_width(spr_floor)/abs(GlobalMovement) + abs(GlobalMovement);
NextRoom = room;

roomcount = 0;


instance_create_layer(room_width/2 - 75, room_height - 100,"Instances", obj_floor);
instance_create_layer(room_width/2 + 857, room_height - 100,"Instances", obj_floor);