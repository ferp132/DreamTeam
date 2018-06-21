draw_self();


//Draw BarFillers
//Health
					draw_sprite_ext(sprEnemyHealthBarFiller, 0,x - 100, 27 + y - sprite_height * Facing, EnemyHP/MaxEnemyHP,1,0,c_white,1);
//Ammo
if(ShootDelay > 0)	draw_sprite_ext(sprTurretBulletBarFiller, 0, x - 100, 20 + y - sprite_height * Facing, 1 - ShootDelay/EnemyFireRate,1,0,c_white,1);
else				draw_sprite_ext(sprTurretBulletBarFillerFiring, image_index, x - 100, 20 + y - sprite_height * Facing, Shots/MaxShots,1,0,c_white,1);


//Draw  Bar Outlines
					draw_sprite(sprTurretBulletBar, 0, x - 100, 20 + y - sprite_height * Facing);
					draw_sprite(sprEnemyHealthbar, 0, x - 100, 27 + y - sprite_height * Facing);




