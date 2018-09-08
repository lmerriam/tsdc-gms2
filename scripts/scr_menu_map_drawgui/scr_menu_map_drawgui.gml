/// Draw the map
//var maph, mapw, ratio;

// Draw nav menu
scr_menu_navigation_drawgui();

// Draw the current map sprite
draw_sprite_stretched(global.current_map,0,map_offset_x,map_offset_y,map_w,map_h);

// Draw fog of war
var fog = global.fog_grid;
for (var xx=0; xx<ds_grid_width(fog); xx++) {
	for (var yy=0; yy<ds_grid_height(fog); yy++) {
		if (fog[# xx,yy]) {
			var chunk_size = Chunk_Controller.chunk_size;
			var x1 = scr_map_x(xx*chunk_size);
			var x2 = scr_map_x((xx+1) * chunk_size);
			var y1 = scr_map_y(yy*chunk_size);
			var y2 = scr_map_y((yy+1) * chunk_size);
			draw_rectangle_fast(x1,y1,x2,y2);
		}
	}
}

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