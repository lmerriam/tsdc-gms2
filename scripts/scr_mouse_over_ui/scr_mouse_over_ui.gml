/// scr_mouse_over_ui(x1,y1,x2,y2)
/// @description Check if the mouse is over a GUI element
/// @param x1
/// @param y1
/// @param x2
/// @param y2
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var mousex = device_mouse_x_to_gui(0);
var mousey = device_mouse_y_to_gui(0);

if (mousex > x1 and mousex < x2 and mousey > y1 and mousey < y2) {
    return true;
} else {
    return false;
}
