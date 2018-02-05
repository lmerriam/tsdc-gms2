// HUD draw event

// Prep the minimap
if (surface_exists(minimap)) {

    surface_set_target(minimap);
    draw_clear(c_black);
	
	// Draw the minimap
	var originx = scr_minimap_x(Player.x)-(minimap_width/2);
	var originy = scr_minimap_y(Player.y)-(minimap_height/2);
    draw_sprite_part(global.current_map,0,originx,originy,minimap_width,minimap_height,0,0);
	
	// Draw the locations
	var range = 6*minimap_width;
	var num_locations = ds_list_size(global.locations);
	for (var i=0; i<num_locations; i++) {
		var location = global.locations[| i];
		if (location.x > Player.x-range and location.x < Player.x+range and location.y > Player.y-range and location.y < Player.y+range) {
			draw_sprite(location.location_sprite,0,scr_minimap_x(location.x)-originx,scr_minimap_y(location.y)-originy);
		}
	}
    
    surface_reset_target();
    
} else {
    minimap = surface_create(minimap_width,minimap_height);
}