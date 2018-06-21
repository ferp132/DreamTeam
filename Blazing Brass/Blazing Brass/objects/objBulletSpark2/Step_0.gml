randomize();
a_alpha = random_range(0.03,0.15);
image_alpha -= a_alpha;
if(image_alpha <= 0){
	instance_destroy();
}