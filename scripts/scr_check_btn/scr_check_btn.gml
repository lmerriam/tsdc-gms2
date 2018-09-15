/// scr_check_btn(button_array)
var btn = argument0;
var x1 = btn[0];
var y1 = btn[1];
var x2 = x1 + btn[2];
var y2 = y1 + btn[3];

var mousex = GUI.gui_mouse_x;
var mousey = GUI.gui_mouse_y;

if (mousex > x1 and mousex < x2 and mousey > y1 and mousey < y2) {
    return true;
} else {
    return false;
}
