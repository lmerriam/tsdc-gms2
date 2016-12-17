// Character menu step
scr_menu_navigation_step();

if (mouse_check_button_released(1)) {
	for (var i = 0; i<array_length_1d(stat_list); i++) {
		var stat = stat_list[i];
		var inc = Player.stat_increments[? stat];
		var xx = stat_list_x;
		var yy = stat_list_y + stat_list_line_height*i;
		if (scr_mouse_over_ui(xx-64,yy,xx-32,yy+32) and Player.base_stats[? "Stat points"] > 0 and inc > 0) {
			Player.base_stats[? stat] += inc;
			Player.base_stats[? "Stat points"] -= 1;
			scr_calc_stats();
		}
	}
}