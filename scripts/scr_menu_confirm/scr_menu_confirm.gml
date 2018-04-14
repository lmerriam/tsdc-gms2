/// @param text
/// @param actions_ds

var text = argument0;
var actions = argument1;

// Confirmation settings
GUI.confirm_actions = actions;
GUI.confirm_text = text;

// Set menu states
GUI.menu_step = scr_menu_confirm_step;
GUI.menu_draw = scr_blank;
GUI.menu_drawgui = scr_menu_confirm_drawgui;

// Game settings
global.timescale = 0;
global.current_menu = "Confirm";