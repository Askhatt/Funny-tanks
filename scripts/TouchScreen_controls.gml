///TouchScreen_controls(stick_x1, stick_y1, stick_x2, stick_y2, fire_x1, fire_y1, fire_x2, fire_y2);
//Stick rectangle
var stick_x1 = argument[0];
var stick_y1 = argument[1];
var stick_x2 = argument[2];
var stick_y2 = argument[3];
//Shoot rectangle
var fire_x1 = argument[4];
var fire_y1 = argument[5];
var fire_x2 = argument[6];
var fire_y2 = argument[7];

draw_rectangle(stick_x1, stick_y1, stick_x2, stick_y2, true);

//device_controls
for(var i=0; i<4; i++){
    if (device_mouse_check_button(i, mb_left) && device_mouse_y_to_gui(i)>stick_y1 && device_mouse_y_to_gui(i)<stick_y2){
        if (Input == noone){
            Input = i;
            x_start = device_mouse_x_to_gui(i);
            y_start = device_mouse_y_to_gui(i);
            break;
        }
    }
    if (device_mouse_check_button_pressed(i, mb_left)){ // fourth quarter
        if (point_in_rectangle(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), 
         fire_x1 , fire_y1, fire_x2, fire_y2)){
                shooting();
        }
    }
}
//    draw_text(1000, 90, device_mouse_check_button(i, mb_left));

check_variables();

if (Input != noone)
    draw_stick(Input);

if (device_mouse_check_button_released(Input, mb_left) || device_mouse_y_to_gui(Input) < stick_y1
 || device_mouse_y_to_gui(Input) > stick_y2)
    Input = noone;
