if !(y >= 450)
{
vspeed += 5;
alarm[1]=30;

}

if y >= 450
{
	instance_create_layer(x, y+322,"Instances",objStart)
	//-200 is in the gap above the text
}