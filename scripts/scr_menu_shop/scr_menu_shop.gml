// Switch to HUD
var vendor = argument0;
shop_slots = argument0.vendor_inv;

GUI.menu_step = scr_menu_shop_step;
GUI.menu_draw = scr_blank;
GUI.menu_drawgui = scr_menu_shop_drawgui;