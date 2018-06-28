//var tilemap = layer_tilemap_get_id("forest");
global.room_tile_w = room_width/global.tile_size;
global.room_tile_h = room_height/global.tile_size;

var room_tile_w = global.room_tile_w;
var room_tile_h = global.room_tile_h;

// Create the grid or resize existing
if (variable_global_exists("collision_tiles")) {
	ds_grid_resize(global.collision_tiles,room_tile_w,room_tile_h);
} else {
	global.collision_tiles = ds_grid_create(room_tile_w,room_tile_h);
}
ds_grid_clear(global.collision_tiles,false);

// Iterate through all layers in room
var all_layers = layer_get_all();
var layer_count = array_length_1d(all_layers);
for (var lyr=0; lyr<layer_count; lyr++) {
	
	// Identify layers with "_collide"
	var name = layer_get_name(all_layers[lyr]);
	if (string_pos("_collide",name)) {
		
		// Loop through collision layers and add to collision grid
		var tilemap = layer_tilemap_get_id(all_layers[lyr]);
		for (var xx=0; xx<room_tile_w; xx++) {
			for (var yy=0; yy<room_tile_h; yy++) {
				if (tilemap_get(tilemap, xx, yy) != 0) {
					global.collision_tiles[# xx,yy] = true;
				}
			}
		}
	}
}