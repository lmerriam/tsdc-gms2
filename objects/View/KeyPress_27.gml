/// Pause the game
if (global.current_menu != noone) {
    global.current_menu = noone;
    scr_handle_deactivation();
} else {
    global.current_menu = global.menu_settings;
    scr_handle_deactivation();
}

