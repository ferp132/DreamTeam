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
		case "X":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objPushBox);
			break;
		}
		case "U":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objBarrelUp);
			break;
		}
		case "S":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objBarrelSide);
			break;
		}
		case "L":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objSeatLeft);
			break;
		}
		case "R":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objSeatRight);
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
