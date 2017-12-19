//Shooting
global.bullet_creator = id;
if !(have_bullet){
    var projectile_id = instance_create(x + lengthdir_x(len_, image_angle), 
     y + lengthdir_y(len_, image_angle), o_projectile);
    have_bullet = true;
}
