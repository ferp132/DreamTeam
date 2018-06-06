var CarriageStringData = "";
 
CarriageStringData = ds_list_find_value(CarriageList, floor(random(ds_list_size(CarriageList))));

for (c = 0; c < string_length(CarriageStringData); c++)
{
	if (c = 0) instance_create_layer(room_width + ((c mod CarriagexTiles) * GridSize) + 32, (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize) - 96, "Background_Cloud_Front", objCarriage);
	
	switch(string_char_at(CarriageStringData, c))
	{
		case "0":

			break;
		case "1":
			{	
			instance_create_layer(room_width + ((c mod CarriagexTiles) * GridSize), 
								 (room_height  - 100 - CarriageHeight) + (floor(c / CarriagexTiles) * GridSize),
								  "Instances", objCollide);
							//	  show_message(string((floor(c / CarriageyTiles) * GridSize)));
			

			break;
			}
	}
}
