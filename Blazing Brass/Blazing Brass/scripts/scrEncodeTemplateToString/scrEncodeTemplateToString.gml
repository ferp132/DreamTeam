GridSize = 32;

xTiles = room_width  / GridSize;
yTiles = room_height / GridSize;

var LevelData = "";

for (_y = 0; _y < yTiles; _y++)
	for (_x = 0; _x < xTiles; _x++)
	{
		inst = instance_position(_x * GridSize, _y * GridSize, all);
		
		if (inst != noone)
			inst = inst.object_index;
			
		switch (inst)
		{
			case noone:
				LevelData += "0";
				break;
			case objCollide:
				LevelData += "1";
				break;
			case objLadder:
				LevelData += "2";
				break;
			case objPushBox:
				LevelData += "X";
				break;
			case objBarrelUp:
				LevelData += "U";
				break	
			case objBarrelSide:
				LevelData += "S";
				break	
			case objSeatLeft:
				LevelData += "L";
				break	
			case objSeatRight:
				LevelData += "R";
				break	
			case objScrap:
				LevelData += "4";
				break;
			case Obj_Turret:
				LevelData += "5";
				break
			case objBandit:
				LevelData += "6";
				break	
			
		}
	}

SaveDir = get_save_filename("*.txt", room_get_name(room) + ".txt");
File = file_text_open_write(SaveDir);
file_text_write_string(File, LevelData);
file_text_close(File);