// Set up the HUD
//show_debug_overlay(true);

// Set up general purpose GUI variables
window_width = global.window_width;
window_height = global.window_height;
global.window_ratio = window_width/window_height;
window_hcenter = window_width/2;
windowpadding = .01 * window_width;
draw_set_font(BASE_FONT);

// Set up the various menus and their elements
scr_menu_castmode_create();
scr_menu_map_create();
scr_menu_hud_create();
scr_menu_inv_create();
scr_menu_shop_create();
scr_menu_navigation_create();
scr_menu_char_create();
scr_menu_dialog_create();
scr_menu_quests_create();
scr_menu_overworld_create();
scr_menu_confirm_create();

// Set initial menu state
global.current_menu = "HUD";
menu_step = scr_menu_hud_step;
menu_draw = scr_menu_hud_draw;
menu_drawgui = scr_menu_hud_drawgui;