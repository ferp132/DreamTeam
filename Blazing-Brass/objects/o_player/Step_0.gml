var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if (hinput != 0){
	hspeed_ += hinput * acceleration
	hspeed_ = clamp(hspeed_, -max_speed, max_speed);
} else hspeed_ = lerp(hspeed_, 0, 0.3);



if(place_meeting(x+hspeed_, y, o_wall)){
	while(!place_meeting(x+sign(hspeed_), y, o_wall)){
	 x += sign(hspeed_);	 
	}
	hspeed_ = 0;
}

x += hspeed_;


if(!place_meeting(x, y+1, o_wall)){
	vspeed_ += gravity_;
} else if (keyboard_check_pressed(vk_up)){
	vspeed_ = -12;
}

if(place_meeting(x, y+vspeed_,o_wall)){
	while (!place_meeting(x,y+sign(vspeed_), o_wall)){
	y += sign(vspeed_)
	}
	vspeed_ = 0;
}
y += vspeed_;