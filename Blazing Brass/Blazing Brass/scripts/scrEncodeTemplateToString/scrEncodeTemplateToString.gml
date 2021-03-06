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
			case objTable:
				LevelData += "T";
				break	
			case objScrap:
				LevelData += "4";
				break;
			case ObjTurret:
				LevelData += "5";
				break
			case objBandit:
				LevelData += "6";
				break	
			case objWagonConnector:
				LevelData += "!";
				break	
			case objWagon1Crack1:
				LevelData += "@";
				break	
			case objWagon2Crack1:
				LevelData += "#";
				break
			case objWagon3:
				LevelData += "$";
				break	
			case objWagon4:
				LevelData += "%";
				break	
			case objWagon5:
				LevelData += "^";
				break	
			case objWagon1Crack2:
				LevelData += "&";
				break	
			case objWagon1Crack3:
				LevelData += "*";
				break	
			case objWagon1Ladder1:
				LevelData += "(";
				break	
			case objWagon1Ladder2:
				LevelData += ")";
				break
			case objWagon2Crack2:
				LevelData += "_";
				break	
			case objWagon2Ladder1:
				LevelData += "+";
				break	
			case objWagon2Ladder2:
				LevelData += "{";
				break	
		}
	}

SaveDir = get_save_filename("*.txt", room_get_name(room) + ".txt");
File = file_text_open_write(SaveDir);
file_text_write_string(File, LevelData);
file_text_close(File);