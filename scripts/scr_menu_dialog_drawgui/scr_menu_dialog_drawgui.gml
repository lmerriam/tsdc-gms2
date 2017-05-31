// Draw black overlay
scr_draw_overlay();

// Speaker portrait
if (dialog_portrait != noone) {
	draw_sprite_stretched(dialog_portrait,0,dialog_portrait_x,dialog_portrait_y,dialog_portrait_w,dialog_portrait_h);
}

// Dialog text
draw_set_color(dialog_text_color);
draw_set_font(dialog_text_font);
draw_text_ext(dialog_text_x,dialog_text_y,dialog_text,dialog_text_line_height,dialog_text_w);

// Responses
if (dialog_responses != noone) {
	draw_set_color(dialog_responses_color);
	draw_set_font(dialog_responses_font);
	for (var i=0; i < ds_list_size(dialog_responses); i++) {
		var current_y = dialog_responses_y + i * dialog_responses_line_height;
		var current_response = dialog_responses[| i];
		var current_response_text = current_response[? "text"];
		draw_text_ext(dialog_responses_x, current_y, current_response_text, dialog_text_line_height,dialog_responses_width);
	}
}

// Close btn
//draw_sprite(dialog_closebtn_sprite,0,dialog_closebtn_x,dialog_closebtn_y);