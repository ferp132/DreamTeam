alarm[0] = 100;

w = random_range(32,500);
h = choose(360,380,400,420);

instance_create_layer(room_width+w,h,"Instances",obj_ground);