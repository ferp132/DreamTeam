//-----Horizontal Movement

if (HMovement == 0) x += objControl.GlobalMovement;
else if (HMovement < 0) x += objControl.GlobalMovement + HMovement;
else x += HMovement;

//Vertical Movement
y += VMovement;
