/// @description Open the dialog menu
/// @param portrait
/// @param dialog_ds_map

var dialog_ds = argument1;

GUI.dialog_portrait = argument0;
GUI.dialog_text = dialog_ds[? "text"];
GUI.dialog_responses = dialog_ds[? "responses"];

var response_height = ds_list_size(GUI.dialog_responses)*GUI.dialog_responses_line_height;
GUI.dialog_responses_y = global.window_height - 32 - response_height;

GUI.menu_step = scr_menu_dialog_step;
GUI.menu_draw = scr_blank;
GUI.menu_drawgui = scr_menu_dialog_drawgui;

global.timescale = 0;
global.current_menu = "Dialog";