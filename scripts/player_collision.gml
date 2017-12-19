player_move_state();


// Horisontal collision
if place_meeting(x+hspd, y, obj_wall)
{
   if !(place_meeting(x+sign(hspd), y, obj_wall))
        x += sign(hspd);
   spd = 0;
}

// Vertical collision
if place_meeting(x, y+vspd, obj_wall)
{
    if !(place_meeting(x , y+sign(vspd), obj_wall))
        y += sign(vspd);
    spd = 0;
}



