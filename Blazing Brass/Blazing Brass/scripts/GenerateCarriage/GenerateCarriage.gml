var CarriageStringData = "";
 
CarriageStringData = ds_list_find_value(CarriageList, floor(random(ds_list_size(CarriageList))));

for (c = 0; c < string_length(CarriageStringData); c++)
{
	//new
	CharacterToCheck = string_char_at(CarriageStringData, c)
	
	//if (c = 0) instance_create_layer(room_width + ((c mod CarriagexTiles) * GridSize) + 32, (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize) - 96, "Background_Cloud_Front", objCarriage1);
	
	//new
	if(!position_empty(room_width/2 + ((c mod CarriagexTiles) * GridSize), (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize)))
		{
			CharacterToCheck = "0";
		}
		
	switch(CharacterToCheck)
	{
		case "0":
			break;
		case "1":
		{	
			instance_create_layer(room_width/2 + ((c mod CarriagexTiles) * GridSize), (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize), "Instances", objCollide);
			break;
		}
		case "2":
		{
			instance_create_layer(room_width/2 + ((c mod CarriagexTiles) * GridSize), (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize), "Instances", objLadder);
			break;
		}
		case "3":
		{
			instance_create_layer(room_width/2 + ((c mod CarriagexTiles) * GridSize), (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize), "Instances", objPushBox);
			break;
		}
		case "4":
		{
			instance_create_layer(room_width/2 + ((c mod CarriagexTiles) * GridSize), (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize), "Instances", objScrap);
			break;
		}
		
	}
}
