//Initialize Vars
GridSize		= 32;
CarriagexTiles	= 60;
CarriageyTiles	= 26;

CarriageWidth	= CarriagexTiles * GridSize;
CarriageHeight	= CarriageyTiles * GridSize;

randomize();

// Create Carriage Lists
if (argument0 == 1)
{
CarriageList = ds_list_create();  

ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000LLL00000LLL00000LLL000000RRRR000RRRR000RRRR00000000000000000LLL00000LLL00000LLL000000RRRR000RRRR000RRRR00000000000000000LLL00000LLL00000LLL000000RRRR000RRRR000RRRR00000000000000000LLL00000LLL00000LLL000600RRRR000RRRR000RRRR00000000000000000LLL00000LLL00000LLL000000RRRR000RRRR000RRRR00000000000000000LLL00000LLL00000LLL000000RRRR000RRRR000RRRR00000000000000000LLL00000LLL00000LLL000000RRRR000RRRR000RRRR00000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
/*
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000022111111111111220000000000000000000000000000000000000000000022111111111111220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000000000000000000000022333333333333220000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033333333000000000000000000000000000000000000000000000000000033333333000000000000000000000000000000000000000000000000000033333333000000000000000000000000000000000000000000000000000033333333000000221111111111111111111111100000002211111111111111111111111000221111111111111111111111100000002211111111111111111111111000221100000000000000000000000000002200001110000000000000011000221100000000000000000000000000002200001110000033330000011000221100000000000000000000000000002200001110000033330000011000001100000000000000000000000000002200001110000033330000011000000000000000000000000000000000002200001110000033330000000000000000000000000003333333300000002200001110003333333300000000000000000000000003333333300000002200001110003333333300000000000000000000000003333333300000002200001110003333333300000000000000000000111113333333300000002200001110003333333300000000000000000000111113333333333330002200001110033333333333300000000000000000111113333333333330002200001110033333333333300000000000000000111113333333333330002200001110033333333333300000000000000000111113333333333330002200001110033333333333300000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000005555000000000000000000000000033330000000000000000000000000221111111111111111111111111111111111000000000000000000000000221111111111111111111111111111111111000000000000000000000000221111111111111111111111111111111111000000000000000333300000221111111111111111111111111111111111000000000000000333300000221111111111111111111111111111111111000000000000000333300000221111111111111111111111111111111111000000000000000333300000221110000000000000000000000000000000000000000000000333300000221110000333300000000000000000000000000000000000000333300000221110000333300000000000000000000000000000000000000333300000221110000333300000000000000000000000000000000000000333300000221110000333300000000000000000000000000000000000033333333000221110033330333300000333300000000000000000000000033333333000221110033330333300000333300000000000000000000000033333333000221110033330333300000333300000000000000000000000033333333000221110033330333300000333300000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111110000000000111111111111122001111111111111111111111111111111110000000000111111111111122001100000000000000000000000000000000000000000000000000011122001100000000000000000000000000000000000003333000000000011122001100000000000000000000000000000000000003333000000000011100001100000000000000000000000000000000000003333000000000011100000000000000000000000000000000000000000003333000000000000000000000000000000000000000000000000000033333333000000000000000000000000000000000000000000000000000033333333000000555500000000000000000000000000000000000000000033333333000000555500000000000000000000000000000000000000000033333333000000555500000000000000000000000000000000000000333333333333000000555500000000000000000000000000000000000000333333333333000000555500000000000000000000000000000000000000333333333333000000555500000000000000000000000000000000000000333333333333000000555500000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033330000000000000000000000000000000000000000000000000000000033330000000000000000000000000000000000000000000000000000000033330000000000000000000000000000000000000000000000000000000033330000000000000000000000000000000000000000000000000000033333333000000000000000000003333000000000000000000000000000033333333000000000000000000003333000000000000000000000000000033333333000000000000000000003333000000000000000000000000000033333333000000000000000000003333000000000000000000000000000333333333333000000000000003333333300000000000000000000000000333333333333000000000000003333333300000000000000000000000000333333333333000000000000003333333300000000000000000000000000333333333333000000000000003333333300000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");	
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");	
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000555500000000000000000000000000000000000000000000000000000000555500000000000002211111111111112200000000000000000000000000555500000000000002211111111111112200000000000000000000000000555500000000000002211133333333112200000000000000000000000000555500000000000002211133333333112200000000000000000000000000555500000000000002211133333333110000000000000000000000000000555500000000000002211133333333110000000000000000000000000022111100000000000002211133333333000000000000000000333333330022111100000000000002211133333333000000000000000000333333330022111100000000000002211133333333000000000000000000333333330022111100000000000002211133333333000000000000000000333333330022111100000000000002211133333333000000000000000333333333333022111100000000000002211133333333000000000000000333333333333022111100000000000002211133333333000000000000000333333333333022111100000000000002211133333333000000000000000333333333333022111100000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");	
ds_list_add(CarriageList,
	"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111111111100001100000000000000000000000000000000000000000000000000011100001100000000000000333300000000000000000000000000000000011100001100000000000000333300000000000000000000000000000000011100001100000000000000333300000000000000000000000000000000011100000000000000000000333300000000000000000000000000000000000000000000000000000000333300000000000000000000000000000055550000000000000000000000333300000000000000000000000000000055550000000000000000000000333300000000000000000000000000000055550000000000000000000000333300000000000000000000000000000055550000000000000000001111111122000000003333333333330000000055550000000000000000001111111122000000003333333333330000000055550000000000000000001111111122000000003333333333330000000055550000000000000000001111111122000000003333333333330000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");	
*/
}
//Generate Carriage
if (argument0 == 2)
{
	GenerateCarriage();
}

//Add destroyLists To Clear Memory
else if (argument0 == 3)
DestroyLists();