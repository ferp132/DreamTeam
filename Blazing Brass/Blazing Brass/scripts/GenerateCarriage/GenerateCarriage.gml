var CarriageStringData = "";

switch(argument0)
{
	case 0:
	{
		break;
	}
	case 1:
	{
		CarriageStringData = ds_list_find_value(CarriageList1, floor(random(ds_list_size(CarriageList1))));
		break;
	}
	case 2:
	{		
		CarriageStringData = ds_list_find_value(CarriageList2, floor(random(ds_list_size(CarriageList2))));
		break;
	}
	case 3:
	{
		CarriageStringData = ds_list_find_value(CarriageList3, floor(random(ds_list_size(CarriageList3))));
		break;
	}
	case 4:
	{
		CarriageStringData = ds_list_find_value(CarriageList4, floor(random(ds_list_size(CarriageList4))));
		break;
	}
	case 5:
	{
		CarriageStringData = ds_list_find_value(CarriageList5, floor(random(ds_list_size(CarriageList5))));
		break;
	}
}

for (c = 0; c < string_length(CarriageStringData); c++)
{
	CharacterToCheck = string_char_at(CarriageStringData, c);
	PlaceToPlacex = room_width + ((c mod CarriagexTiles) * GridSize);
	PlaceToPlacey = (room_height - CarriageHeight) + ((floor(c / CarriagexTiles) * GridSize));
	
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
		case "T":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objTable);
			break;
		}
		case "4":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objScrap);
			break;
		}
		case "5":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", ObjTurret);
			break;
		}
		case "6":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objBandit);
			break;
		}
		case "!":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagonConnector);
			break;
		}
		case "@":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon1Crack1);
			break;
		}
		case "#":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon2Crack1);
			break;
		}
		case "$":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon3);
			break;
		}
		case "%":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon4);
			break;
		}
		case "^":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon5);
			break;
		}
		case "&":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon1Crack2);
			break;
		}
		case "*":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon1Crack3);
			break;
		}
		case "(":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon1Ladder1);
			break;
		}
		case ")":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon1Ladder2);
			break;
		}
		case "_":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon2Crack2);
			break;
		}
		case "+":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon2Ladder1);
			break;
		}
		case "{":
		{
			instance_create_layer(PlaceToPlacex, PlaceToPlacey, "Instances", objWagon2Ladder2);
			break;
		}
		
	}
}
