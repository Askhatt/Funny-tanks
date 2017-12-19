right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
fire_key = keyboard_check_pressed(ord("M"));
restart_key = keyboard_check(ord("R"));
quit_key = keyboard_check_pressed(vk_escape);
left_mouse = mouse_check_button(mb_left);
left_mouse_pressed = mouse_check_button_released(mb_left);

//device inputs
device_left_mouse = device_mouse_check_button(0, mb_left);
device_left_mouse_pressed = device_mouse_check_button_pressed(1, mb_left);
device_right_mouse = device_mouse_check_button(0, mb_right);

 
