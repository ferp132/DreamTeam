scrPushBoxCollision();
scrHorzCollision();

x += HMovement + objControl.GlobalMovement;

HMovement = lerp(HMovement, 0, 0.5);


scrVertCollision()
if(!place_meeting(x, y + 1, objCollide)) VMovement += Gravity;
y += VMovement;

if(y < -room_height || x < -room_width || HP <= 0) instance_destroy();
