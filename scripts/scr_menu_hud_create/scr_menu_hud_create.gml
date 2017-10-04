// HUD create event

buttons = ds_list_create();

// Init minimap
minimap = -1;
minimap_ratio = room_width/sprite_get_width(global.current_map);
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
menu_btn[2] = windowpadding + width;
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

// Nearest interactable
nearest_interactable_in_range = false;

// Nearest vendor UI
var width = 64;
var height = 64;
shop_btn[0] = window_width - (width+windowpadding);
shop_btn[1] = cast_btn[1] - (height+windowpadding);
shop_btn[2] = width;
shop_btn[3] = height;
shop_btn[4] = spr_menu_button;

ds_list_add(buttons,cast_btn,menu_btn,nearest_btn);

// Keep track of combos
combo_timer = Time.now;
combo_count = 0;
combo_bar_percent = 0;
combo_count_y = 460;
combo_bar_y1 = combo_count_y+20;
combo_bar_width = 200;
combo_bar_x1 = window_hcenter - combo_bar_width/2;
combo_bar_x2 = window_hcenter + combo_bar_width/2;
combo_bar_y2 = combo_bar_y1 + 4;

// Keep track of announcements
announce_timer = scr_sec_from_now(3);
announce_target = noone;
global.announcements = ds_list_create();
