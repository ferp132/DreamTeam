/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 531D4432
/// @DnDArgument : "code" "switch (state)$(13_10){$(13_10)    case e_state.idle:$(13_10)    {$(13_10)        HMovement = 0;$(13_10)        VMovement = (min(7,VMovement+5));$(13_10)        if (distance_to_object(obj_PlayerParent) < 192) state = e_state.chase;$(13_10)    }$(13_10)    break;$(13_10)    case e_state.chase:$(13_10)    {$(13_10)        dir = sign(obj_PlayerParent.x - x);$(13_10)        HMovement = dir * 2;$(13_10)        VMovement = (min(7,VMovement+ 5));$(13_10)        if (distance_to_object(obj_PlayerParent) > 256) state = e_state.idle;$(13_10)    }$(13_10)    break;$(13_10)}$(13_10)$(13_10)//Horizontal Collision$(13_10)if (place_meeting(round(x+HMovement),round(y),objCollide))$(13_10){$(13_10)    while(!place_meeting(round(x+sign(HMovement)),round(y),objCollide)) x += sign(hsp);$(13_10)    HMovement = 0;$(13_10)}$(13_10)x += HMovement;$(13_10)$(13_10)//Vertical Collision$(13_10)if (place_meeting(round(x),round(y+VMovement),objCollide))$(13_10){$(13_10)    while(!place_meeting(round(x),round(y+sign(VMovement)),objCollide)) y += sign(vsp);$(13_10)    VMovement = 0;$(13_10)}$(13_10)y += VMovement;"
switch (state)
{
    case e_state.idle:
    {
        HMovement = 0;
        VMovement = (min(7,VMovement+5));
        if (distance_to_object(obj_PlayerParent) < 192) state = e_state.chase;
    }
    break;
    case e_state.chase:
    {
        dir = sign(obj_PlayerParent.x - x);
        HMovement = dir * 2;
        VMovement = (min(7,VMovement+ 5));
        if (distance_to_object(obj_PlayerParent) > 256) state = e_state.idle;
    }
    break;
}

//Horizontal Collision
if (place_meeting(round(x+HMovement),round(y),objCollide))
{
    while(!place_meeting(round(x+sign(HMovement)),round(y),objCollide)) x += sign(hsp);
    HMovement = 0;
}
x += HMovement;

//Vertical Collision
if (place_meeting(round(x),round(y+VMovement),objCollide))
{
    while(!place_meeting(round(x),round(y+sign(VMovement)),objCollide)) y += sign(vsp);
    VMovement = 0;
}
y += VMovement;