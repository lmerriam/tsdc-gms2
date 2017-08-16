
global.attack_button = false;
global.spell_button = false;

var aiming = false;
var moving = false;

// Assign joysticks to touches based on screen location
if (device_mouse_check_button_pressed(0,mb_left)) {
	if (device_mouse_x_to_gui(0) < global.window_width/2) {
        move_touch = 0;
        aim_touch = 1;
    } else {
        move_touch = 1;
        aim_touch = 0;
    }
}
	
// Get the coordinates of the current move device
var move_touch_x = device_mouse_x_to_gui(move_touch);
var move_touch_y = device_mouse_y_to_gui(move_touch);
            
// Get the coordinates of the aim device
var aim_touch_x = device_mouse_x_to_gui(aim_touch);
var aim_touch_y = device_mouse_y_to_gui(aim_touch);
            
// If the move touch started this frame, set the move origin
if (device_mouse_check_button_pressed(move_touch,mb_left)) {
    move_origin_x = move_touch_x;
    move_origin_y = move_touch_y;
}
// If the aim touch started this frame, set the aim origin
if (device_mouse_check_button_pressed(aim_touch,mb_left)) {
    aim_origin_x = aim_touch_x;
    aim_origin_y = aim_touch_y;
}
        
// Get the length if the move device is active
if (device_mouse_check_button(move_touch,mb_left)) { moving = true };
if (moving) {
    global.move_len = clamp(point_distance(move_origin_x,move_origin_y,move_touch_x,move_touch_y),0,stats[? "Speed"]);
    global.move_dir = point_direction(move_origin_x,move_origin_y,move_touch_x,move_touch_y);
}
            
// Get the mouse direction if the aim device is active
if (device_mouse_check_button(aim_touch,mb_left)) { aiming = true };
if (aiming) {
    global.aim_dir = point_direction(aim_origin_x, aim_origin_y, aim_touch_x, aim_touch_y);
	global.aim_len = point_distance(aim_origin_x, aim_origin_y, aim_touch_x, aim_touch_y);
	global.attack_button = true;
} else {
	global.aim_len = 0;
}

if (device_mouse_check_button(aim_touch,mb_right)) {
    global.spell_button = true;
}