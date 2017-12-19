stick_len = point_distance(x_start, y_start, device_mouse_x_to_gui(Input), device_mouse_y_to_gui(Input));
stick_dir = point_direction(x_start, y_start, device_mouse_x_to_gui(Input), device_mouse_y_to_gui(Input));

if (stick_len < radious){
    draw_x = x_start + lengthdir_x(stick_len, stick_dir);
    draw_y = y_start + lengthdir_y(stick_len, stick_dir);
} else {
    draw_x = x_start + lengthdir_x(radious, stick_dir);
    draw_y = y_start + lengthdir_y(radious, stick_dir);
}
draw_set_alpha(.4);
draw_circle(x_start, y_start, radious, false);
draw_set_alpha(1);
draw_sprite(s_gameStick, 0, draw_x, draw_y);  

