// Switch to HUD
GUI.menu_step = scr_menu_inv_step;
GUI.menu_draw = scr_blank;
GUI.menu_drawgui = scr_menu_inv_drawgui;
global.timescale = 0;
global.current_menu = "Inventory";
//part_system_automatic_update(global.particles_above, false);
//part_system_automatic_update(global.particles_below, false);