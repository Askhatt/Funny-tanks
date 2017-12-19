
var ad = angle_difference(stick_dir, -phy_rotation);
if (abs(ad) > 0 && abs(ad) <= 60)
    vinput = 1;
if (abs(ad) >= 30 && abs(ad) <= 120)
    phy_rotation += -min(abs(ad), rot_spd)*sign(ad);
if (abs(ad) >= 120 && abs(ad) <= 180){
    vinput = -1;
    if (abs(ad) <= 150)
                //convinient when move back
        phy_rotation += min(abs(ad), rot_spd)*sign(ad);
}
