/// Check location clicked

// Check navigation submenu
scr_menu_navigation_step()

// Check mouse clicks
if mouse_check_button_released(1){
	
	
	// Check if click is on a location
	current_location = noone;
	with(Location) {
	    var x1 = map_x - 15;
	    var x2 = map_x + 15;
	    var y1 = map_y - 15;
	    var y2 = map_y + 15;
	    if (scr_mouse_over_ui(x1,y1,x2,y2)) {
	        global.teleport_player_x = x;
	        global.teleport_player_y = y;
	        scr_menu_hud();
	        other.current_location = name;
	    }
	}
}