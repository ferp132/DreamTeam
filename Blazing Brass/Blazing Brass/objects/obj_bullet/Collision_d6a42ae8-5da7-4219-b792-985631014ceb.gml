randomize();
bulletspark_random = random_range(-15,15);

bulletspark = instance_create_layer(x+bulletspark_random,y+bulletspark_random,"Instances_bullet",objBulletSpark2);
bulletspark.image_xscale = 0.5;
bulletspark.image_yscale = 0.5;
bulletspark.image_angle = direction+bulletspark_random;
instance_destroy();