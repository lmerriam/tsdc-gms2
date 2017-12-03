// Switch to HUD
GUI.menu_step = scr_menu_hud_step;
GUI.menu_draw = scr_menu_hud_draw;
GUI.menu_drawgui = scr_menu_hud_drawgui;
global.timescale = 1;
global.current_menu = "HUD";
Time.now = round(Time.now);