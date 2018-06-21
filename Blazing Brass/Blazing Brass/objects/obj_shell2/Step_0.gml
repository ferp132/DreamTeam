image_alpha -= 1/60;
image_angle += sfall;
if(image_alpha<=0){
	instance_destroy();
}