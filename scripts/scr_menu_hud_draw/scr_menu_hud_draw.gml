// HUD draw event

// Prep fog of war
//if (surface_exists(fog)) {
//	surface_set_target(minimap);
//	draw_sprite(Player.sprite_index,0,scr_minimap_x(Player.x),scr_minimap_y(Player.y));
//	surface_reset_target();
//} else {
//	fog = surface_create(minimap_width,minimap_height);
//	surface_set_target(fog);
//	draw_clear(c_black);
//	surface_reset_target();
//}

// Prep the minimap
if (surface_exists(minimap)) {

    surface_set_target(minimap);
    draw_clear(c_black);
	
	// Draw the minimap
	var originx = scr_minimap_x(Player.x)-(minimap_width/2);
	var originy = scr_minimap_y(Player.y)-(minimap_height/2);
    draw_sprite_part(global.current_map,0,originx,originy,minimap_width,minimap_height,0,0);
	//draw_surface_part(fog,originx,originy,minimap_width,minimap_height,0,0);
	
	// Draw the fog
	var range = fog_draw_range;
	var tile_draw_size = fog_tile_size/minimap_ratio;
	for (var i = fog_x-range; i<fog_x+range; i++) {
		for (var j= fog_y-range; j<fog_y+range; j++) {
			var tile = fog[# i,j];
			var xx = i*tile_draw_size-originx;
			var yy = j*tile_draw_size-originy;
			//draw_set_color(c_black);
			if (!tile) draw_sprite_stretched(spr_black,0,xx,yy,tile_draw_size,tile_draw_size);
		}
	}
	
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