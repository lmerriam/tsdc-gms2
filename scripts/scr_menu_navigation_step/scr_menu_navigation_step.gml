/// Check for clicks
if (mouse_check_button_released(1)) {
	if (scr_check_btn(inv_btn)) {
	    scr_menu_inv();
	} else if (scr_check_btn(char_btn)) {
	    //scr_menu_char();
	} else if (scr_check_btn(map_btn)) {
	    scr_menu_map();
	} else if (scr_check_btn(save_btn)) {
	    show_debug_message("I am FILLED with Christ\'s love");
	    scr_save_game();
	} else if (scr_check_btn(close_btn)) {
	    scr_menu_hud();
	}
}