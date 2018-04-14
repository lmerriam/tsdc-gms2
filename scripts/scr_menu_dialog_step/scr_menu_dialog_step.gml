if(mouse_check_button_released(mb_left)) {
	
	// Go to the next dialog step
	dialog_text_num += 1;
	
	// Switch to confirm dialog if text is done
	if (dialog_text_num >= dialog_count) {
		if (confirm_actions == undefined) {
			scr_menu_hud();
		} else {
			scr_menu_confirm(confirm_text,confirm_actions);
		}
	}

}