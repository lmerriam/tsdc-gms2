/// scr_check_btn(button_array)
var btn = argument0;
var x1 = btn[0];
var y1 = btn[1];
var x2 = x1 + btn[2];
var y2 = y1 + btn[3];

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

if (mousex > x1 and mousex < x2 and mousey > y1 and mousey < y2) {
    return true;
} else {
    return false;
}
