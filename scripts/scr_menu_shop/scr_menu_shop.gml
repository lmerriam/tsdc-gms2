// Switch to HUD
var vendor = argument0;
GUI.shop_slots = ds_map_find_value(argument0.properties,"Inventory");

GUI.menu_step = scr_menu_shop_step;
GUI.menu_draw = scr_blank;
GUI.menu_drawgui = scr_menu_shop_drawgui;

global.timescale = 0;
global.current_menu = "Shop";