objBoss.hp -= 1000;
randomize();
bulletspark_random = random_range(-15,15);

bulletspark = instance_create_layer(x+bulletspark_random,y+bulletspark_random,"Instances_bullet",objBulletSpark2);
bulletspark.image_xscale = 2;
bulletspark.image_yscale = 2;
bulletspark.image_angle = direction+bulletspark_random;
instance_destroy();