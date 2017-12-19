get_input();
//rotation
if (right_key)   phy_rotation += rot_spd; 
if (left_key)    phy_rotation -= rot_spd;
dir = -phy_rotation;

//back and forward
vinput =  up_key - down_key; 

if (Input != noone && stick_len > 6)
    stick_control();

if (vinput != 0){                       //geometric progression of speed?
        len += vinput * acceleration;         
    if (vinput > 0){       
        len = clamp(len, -max_spd, max_spd);
    } else 
        len = clamp(len, -max_spd/2, max_spd/2);
} else 
    len = lerp(0, len, friction_);
    
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
 
phy_position_x += hspd;
phy_position_y += vspd;   

if (fire_key) {
    shooting();
}
