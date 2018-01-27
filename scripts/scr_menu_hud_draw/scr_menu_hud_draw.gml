// HUD draw event

// Prep the minimap
if (surface_exists(minimap)) {

    surface_set_target(minimap);
    draw_clear(c_black);
	
	// Draw the minimap
	var originx = scr_minimap_x(Player.x)-50;
	var originy = scr_minimap_y(Player.y)-50;
    draw_sprite_part(global.current_map,0,originx,originy,100,100,0,0);
	
	// Draw the locations
	for (var i=0; i<ds_list_size(global.locations); i++) {
		var location = global.locations[| i];
		if (location.x > Player.x-600 and location.x < Player.x+600 and location.y > Player.y-600 and location.y < Player.y+600) {
			draw_sprite_stretched(location.sprite_index,0,scr_minimap_x(location.x)-originx,scr_minimap_y(location.y)-originy,16,16);
		}
	}
    
    surface_reset_target();
    
} else {
    minimap = surface_create(100,100);
}