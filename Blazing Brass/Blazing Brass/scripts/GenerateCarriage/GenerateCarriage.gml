var CarriageStringData = "";
 
CarriageStringData = ds_list_find_value(CarriageList, floor(random(ds_list_size(CarriageList))));

for (c = 0; c < string_length(CarriageStringData); c++)
{
	CharacterToCheck = string_char_at(CarriageStringData, c);
	PlaceToPlacex = room_width + ((c mod CarriagexTiles) * GridSize);
	PlaceToPlacey = (room_height  - 100 - CarriageHeight) + ((floor(c / CarriagexTiles) * GridSize));
	
	//if (c = 0) instance_create_layer(room_width + ((c mod CarriagexTiles) * GridSize) + 32, (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize) - 96, "Background_Cloud_Front", objCarriage1);
	
	if(!position_empty(PlaceToPlacex, PlaceToPlacey)) continue;
		
	switch(CharacterToCheck)
	{
		case "0":
			break;
		case "1":
		{	
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objCollide);
			break;
		}
		case "2":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objLadder);
			break;
		}
		case "3":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objPushBox);
			break;
		}
		case "4":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objScrap);
			break;
		}
		case "5":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", Obj_Turret);
			break;
		}
		case "6":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objBandit);
			break;
		}
		
	}
}
