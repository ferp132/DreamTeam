draw_self();

//Draw BarFillers
draw_sprite_ext(sprHealthBarFiller, 0,x + sprite_width + 5, y + sprite_height/2 + 8, PlayerHP/100,1,0,c_white,1);
draw_sprite_ext(sprScrapBarFiller, 0,x + sprite_width + 5, y + sprite_height/2 -17, PlayerScrap/100,1,0,c_white,1);

//Draw  Bar Outlines

draw_sprite(sprScrapBar, 0,x + sprite_width, y + sprite_height/2 - 20);
draw_sprite(sprHealthBar, 0,x + sprite_width, y + sprite_height/2);