// Dialog confirm
confirm_btn = noone;
deny_btn = noone;
confirm_window_width = 400;
confirm_window_height = 200;
confirm_window_x1 = global.window_width/2 - confirm_window_width/2;
confirm_window_y1 = global.window_height/2 - confirm_window_height/2;
confirm_window_x2 = global.window_width/2 + confirm_window_width/2;
confirm_window_y2 = global.window_height/2 + confirm_window_height/2;
confirm_text = noone;

var btn_width = 128;
var btn_height = 42;
var btn_padding = 16;

// Confirm text
confirm_text_line_height = 32;

// Confirm button
confirm_btn_x1 = confirm_window_x1;
confirm_btn_y1 = confirm_window_y2 + btn_padding;
confirm_btn_x2 = confirm_btn_x1 + btn_width;
confirm_btn_y2 = confirm_btn_y1+btn_height;
confirm_btn_hcenter = confirm_btn_x1 + btn_width/2;
confirm_btn_vcenter = confirm_btn_y1 + btn_height/2;

// Deny button
deny_btn_x1 = confirm_btn_x2 + btn_padding;
deny_btn_y1 = confirm_btn_y1;
deny_btn_x2 = deny_btn_x1 + btn_width;
deny_btn_y2 = confirm_btn_y1 + btn_height;
deny_btn_hcenter = deny_btn_x1 + btn_width/2;
deny_btn_vcenter = deny_btn_y1 + btn_height/2;