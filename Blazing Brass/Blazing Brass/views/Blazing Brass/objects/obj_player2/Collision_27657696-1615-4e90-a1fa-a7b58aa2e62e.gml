if(!place_free(x+1,y)){
	vspeed = max(0,vspeed);
}
else if(!place_free(x-1,y)){
	vspeed = min(0,vspeed);
}

if(!place_free(x,y+1)){
	hspeed = max(0,hspeed);
}
else if(!place_free(x,y-1)){
	hspeed = min(0,hspeed);
}

//vspeed = 0;
//hspeed = 0;