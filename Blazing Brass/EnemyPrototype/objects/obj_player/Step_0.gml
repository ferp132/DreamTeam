if(keyboard_check_pressed(vk_up) && playerjet > 0){
	vspeed -= VJump;
}

if(place_free(x,y+1)){
	gravity = 0.5;
	if(keyboard_check_pressed(vk_up)){
	playerjet -= 10;
	playerjet = max(0,playerjet);
	}
}
else{
	gravity = 0;
	playerjet = 100;
}

if (keyboard_check(vk_left) && place_free(x-1,y)) {
    motion_add(180,1);
}

if(abs(hspeed) <= 7){
	if(place_meeting(x + 10 + 16,y,obj_ground)){
	hspeed -= 2;
	}
}
else{
	if(place_meeting(x + hspeed + 16,y,obj_ground)){
	hspeed = -hspeed;
	}
}

/*if(place_meeting(x+hspeed,y,obj_grounds)){
	while(!place_meeting(x+sign(hspeed),y,obj_grounds)){
		x+=sign(hspeed);
	}
	hspeed = -7;
}

if position_meeting(x-sprite_xoffset+sprite_width/2,y-sprite_yoffset+sprite_height,obj_ground) {
	objID=instance_position(x-sprite_xoffset+sprite_width/2,y-sprite_yoffset+sprite_height,obj_ground)
	hspeed = objID.hspeed;
	}
	else{
		hspeed:=0;
		}*/

if (keyboard_check(vk_right) && place_free(x+1,y) && playerjet > 0) {
    motion_add(0,0.8);
	playerjet-=4;
}

cooldown--;