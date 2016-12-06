/// Check for clicks
if (scr_check_btn(inv_btn)) {
    scr_toggle_menu(global.menu_inventory);
} else if (scr_check_btn(char_btn)) {
    scr_toggle_menu(global.menu_character);
} else if (scr_check_btn(map_btn)) {
    scr_toggle_menu(global.menu_map);
} else if (scr_check_btn(save_btn)) {
    show_debug_message("I am FILLED with Christ\'s love");
    scr_save_game();
} else if (scr_check_btn(close_btn)) {
    scr_toggle_menu(noone);
}

