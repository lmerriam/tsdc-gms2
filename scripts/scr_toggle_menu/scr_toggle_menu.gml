/// scr_toggle_menu(menu)
var menu = argument0;

// If the menu open variable is now on, send the menu object to the deactivation handler
if (GUI.menu_step = menu) {
	scr_menu_hud();
} else {
	scr_menu_inv();
}