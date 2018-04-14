if (mouse_check_button_released(mb_left)) {
	if (scr_mouse_over_ui(confirm_btn_x1,confirm_btn_y1,confirm_btn_x2,confirm_btn_y2)) {
		scr_execute_actions(confirm_actions);
	}
	scr_menu_hud();
}