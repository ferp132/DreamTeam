randomize();
bombspark_random = random_range(-15,15);

bombspark = instance_create_layer(x+bombspark_random,y+bombspark_random,"Instances_bullet",objBulletSpark2);
bombspark.image_xscale = 0.2;
bombspark.image_yscale = 0.2;
bombspark.image_angle = direction+bombspark_random;
instance_destroy();