/// Draw the map
//var maph, mapw, ratio;

// Draw nav menu
scr_menu_navigation_drawgui();

// Draw the current map sprite
draw_sprite_stretched(global.current_map,0,map_offset_x,map_offset_y,map_w,map_h);

// Draw the marker and set its map coordinates
var num_locations = ds_list_size(global.locations);
for (var i = 0; i<num_locations; i++) {
	var location = global.locations[| i];
	if (location.discovered) {
		var map_x = scr_map_x(location.x);
	    var map_y = scr_map_y(location.y);
	    draw_sprite(location.location_icon,0,map_x,map_y);
	}
}

// Draw player position
draw_sprite(spr_player_idle,0,scr_map_x(global.player_x),scr_map_y(global.player_y));

// Draw the current location
draw_text(32,32,string_hash_to_newline(current_location))