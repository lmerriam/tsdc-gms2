/// Show debug
show_debug_overlay(true);

/// Init GUI elements
event_inherited();

// Window properties
window_width = global.window_width;
window_height = global.window_height;
windowpadding = .01 * window_width;
draw_set_font(PixelSmall);

// Init cast mode
global.cast_mode = false;
cast_btn_width = 96;
cast_btn[0] = window_width - cast_btn_width - windowpadding;
cast_btn[1] = window_height - windowpadding - cast_btn_width;
cast_btn[2] = cast_btn_width;
cast_btn[3] = cast_btn_width;
cast_btn[4] = spr_menu_button;

// Init minimap
minimap = -1;
minimap_width = window_height/5;
minimap_height = minimap_width;
minimap_window = 500;
minimap_window_x = window_width - minimap_width - windowpadding;
minimap_window_y = windowpadding;
minimap_btn[0] = minimap_window_x;
minimap_btn[1] = minimap_window_y;
minimap_btn[2] = minimap_width;
minimap_btn[3] = minimap_height;
minimap_btn[4] = noone;

// Init menu button
var width = .1 * window_width;
var height = width;
menu_btn_origin_x = windowpadding + width/2;
menu_btn_origin_y = windowpadding + height/2;
menu_btn_x2 = menu_btn_origin_x + width;

menu_btn[0] = windowpadding;
menu_btn[1] = windowpadding;
menu_btn[2] = windowpadding+width;
menu_btn[3] = windowpadding + height;
menu_btn[4] = spr_menu_button;

// Init nearest drop UI
nearest_drop = noone;
nearest_drop_in_range = false;
nearest_button_height = 40;

nearest_btn[0] = 0;
nearest_btn[1] = 0;
nearest_btn[2] = 0;
nearest_btn[3] = nearest_button_height;
nearest_btn[4] = noone;

ds_list_add(buttons,cast_btn,menu_btn,nearest_btn);

