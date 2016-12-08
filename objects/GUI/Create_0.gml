// Set up the HUD
/// Show debug
show_debug_overlay(true);

/// Init GUI elements
event_inherited();

// Set up general purpose GUI variables
window_width = global.window_width;
window_height = global.window_height;
windowpadding = .01 * window_width;
draw_set_font(PixelSmall);

// Set up the various menus and their elements
scr_menu_castmode_create();
scr_menu_hud_create();

// Set initial menu state
menu_step = scr_menu_hud_step;
menu_draw = scr_menu_hud_draw;
menu_drawgui = scr_menu_hud_drawgui;