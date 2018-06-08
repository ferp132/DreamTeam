draw_self();
draw_text(room_width/2, room_height/2, string(distance_to_object(objPlayer)));
draw_text(room_width/2, room_height/2 + 50, string(state));
draw_text(room_width/2, room_height/2 + 100, string(HMovement));
draw_text(room_width/2, room_height/2 + 150, string(dir));