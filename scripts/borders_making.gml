///borders_making(width, height, width);

for (var xy=labirintX+center; xy<labirintWidth+labirintX; xy+=stick_width){
    instance_create(xy, labirintY+center, o_wallStick);
    instance_create(xy + stick_height, labirintY + labirintHeight + center, o_wallStick);
}
for (var xy=labirintY+center; xy<labirintHeight+labirintY; xy+=stick_width){
    with (instance_create(labirintX + center, xy + stick_height, o_wallStick))
        phy_rotation = 90;
    with (instance_create(labirintX + labirintWidth + center, xy, o_wallStick))
        phy_rotation = 90;
} 
