draw_self();
draw_line_width(x + 100 * MoveDir, y - sprite_height/2, x + MaxAttackRange * MoveDir, y - sprite_height/2, 10);
draw_text(x,y,string(Shots));
draw_text(x,y + 15,string(ShootTimer));