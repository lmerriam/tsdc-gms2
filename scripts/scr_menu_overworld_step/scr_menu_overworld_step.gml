
// Check navigation submenu
scr_menu_navigation_step()

if (mouse_check_button_released(mb_left)) {
	var key = ds_map_find_first(overworld_locations);
	var num_locations = ds_map_size(overworld_locations);
	for (var i=0; i<num_locations; i++) {
		var location = overworld_locations[? key];
		var xx = location[? "x"]*overworld_spr_ratio + overworld_spr_originx;
		var yy = location[? "y"]*overworld_spr_ratio + overworld_spr_originy;

		if (scr_mouse_over_ui(xx-32,yy-32,xx+32,yy+32)) {
			var rm = asset_get_index(location[? "room"]);
			room_goto(rm);
			Player.x = 32;
			Player.y = 32;
			scr_menu_hud();
		}
		var key = ds_map_find_next(overworld_locations,key);
	}
}