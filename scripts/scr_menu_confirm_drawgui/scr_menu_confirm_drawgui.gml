draw_rectangle_fast(confirm_window_x1,confirm_window_y1,confirm_window_x2,confirm_window_y2)
scr_draw_9patch(spr_button_yellow_x2,0,confirm_btn_x1,confirm_btn_y1,confirm_btn_x2,confirm_btn_y2,4,4,4,4);

scr_draw_9patch(spr_button_yellow_x2,0,deny_btn_x1,deny_btn_y1,deny_btn_x2,deny_btn_y2,4,4,4,4);

// Text
draw_set_font(PixelSmall_18);
draw_set_color(c_white);
draw_text_ext(confirm_window_x1+16,confirm_window_y1+16,confirm_text,confirm_text_line_height,confirm_window_width-32);

// Confirm buttons
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(confirm_btn_hcenter,confirm_btn_vcenter,"Yes");
draw_text(deny_btn_hcenter,deny_btn_vcenter,"No");
draw_set_valign(fa_top);
draw_set_halign(fa_left);