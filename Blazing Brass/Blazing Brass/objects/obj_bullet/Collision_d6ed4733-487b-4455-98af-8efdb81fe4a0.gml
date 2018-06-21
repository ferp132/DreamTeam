randomize();
blood_random = random_range(5,5);

bloodspark = instance_create_layer(x+blood_random,y+blood_random,"Instances_bullet",objBloodSplatter2);
bloodspark.image_xscale = 0.15;
bloodspark.image_yscale = 0.15;
bloodspark.image_angle = direction+blood_random;
instance_destroy();