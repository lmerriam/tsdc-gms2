
// HUD create event
buttons = ds_list_create();

// Init minimap
minimap = -1;
minimap_ratio = room_width/sprite_get_width(global.current_map);
minimap_width = 120;
minimap_height = 120;
minimap_window = 500;
minimap_window_x = window_width - minimap_width - windowpadding;
minimap_window_y = windowpadding;
minimap_center_x = minimap_window_x + (minimap_width/2);
minimap_center_y = minimap_window_y + (minimap_height/2);
minimap_btn[0] = minimap_window_x;
minimap_btn[1] = minimap_window_y;
minimap_btn[2] = minimap_width;
minimap_btn[3] = minimap_height;
minimap_btn[4] = noone;

//fog = ds_grid_create(1,1);
fog_tile_size = 128;
fog = ds_grid_create(1,1);
fog_x = -20;
fog_y = -200;
fog_draw_range = 6;
fog_vision_range = 3;

// Init menu button
var width = sprite_get_width(spr_inventory_button)*2;
var height = width;
menu_btn[0] = windowpadding;
menu_btn[1] = windowpadding;
menu_btn[2] = width;
menu_btn[3] = height;
menu_btn[4] = spr_inventory_button;

// Health bars


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
var width = 64;
var height = 64;
interact_btn[0] = window_width - (width+windowpadding);
interact_btn[1] = cast_btn[1] - (height+windowpadding);
interact_btn[2] = width;
interact_btn[3] = height;
interact_btn[4] = spr_menu_button;

// Health bar
var padding = 24;
hbar_width = 200;
hbar_height = 18;
hbar_x1 = menu_btn[2] + windowpadding;
hbar_y1 = windowpadding;
hbar_x2 = hbar_x1 + hbar_width;
hbar_y2 = hbar_y1 + hbar_height;

// Stamina bar
sbar_width = hbar_width;
sbar_height = hbar_height;
sbar_x1 = hbar_x1;
sbar_y1 = hbar_y2 + 12;
sbar_x2 = hbar_x2;
sbar_y2 = sbar_y1 + sbar_height;

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
global.announcements = ds_queue_create();
