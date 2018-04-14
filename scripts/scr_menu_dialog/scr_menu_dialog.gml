/// @description Open the dialog menu
/// @param portrait
/// @param dialog_ds_map
/// @param actions_ds

var portrait = argument0;
var dialog_ds = argument1;

GUI.dialog_portrait = argument0;
GUI.dialog_text = dialog_ds[? "text"];
GUI.dialog_count = ds_list_size(GUI.dialog_text);
GUI.dialog_text_num = 0;

GUI.confirm_text = dialog_ds[? "confirm text"];
GUI.confirm_actions = dialog_ds[? "confirm actions"];

GUI.menu_step = scr_menu_dialog_step;
GUI.menu_draw = scr_blank;
GUI.menu_drawgui = scr_menu_dialog_drawgui;

global.timescale = 0;
global.current_menu = "Dialog";