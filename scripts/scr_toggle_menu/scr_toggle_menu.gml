/// scr_toggle_menu(menu)
var menu = argument0;

// If the menu open variable is now on, send the menu object to the deactivation handler
global.current_menu = menu;
scr_handle_deactivation();
