if(mouse_check_button_released(mb_left)) {

	for(var i = 0;i<ds_list_size(dialog_responses);i++) {
		var x1 = dialog_responses_x;
		var x2 = dialog_responses_x+dialog_responses_width;
		var y1 = dialog_responses_y + i * dialog_responses_line_height;
		var y2 = y1 + dialog_responses_line_height;
		if (scr_mouse_over_ui(x1,y1,x2,y2)) {
			scr_execute_response(dialog_responses[| i]);
		}
	}
}