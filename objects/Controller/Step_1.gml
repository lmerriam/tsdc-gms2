/// @description Get mouse position and player angle
global.mouse_screen_x = window_mouse_get_x();
global.mouse_screen_y = window_mouse_get_y();

// Get keys
scr_get_input();

// Get controls
script_execute(control_scheme);