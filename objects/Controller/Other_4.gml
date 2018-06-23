var tilemap = layer_tilemap_get_id("forest");
var room_tile_w = room_width/global.tile_size;
var room_tile_h = room_height/global.tile_size;

if (variable_global_exists("collision_tiles")) {
	ds_grid_resize(global.collision_tiles,room_tile_w,room_tile_h);
} else {
	global.collision_tiles = ds_grid_create(room_tile_w,room_tile_h);
}

ds_grid_clear(global.collision_tiles,true);

show_debug_message("Collision grid: " + string(ds_grid_width(global.collision_tiles)));

for (var xx=0;xx<room_tile_w;xx++) {
	for (var yy=0;yy<room_tile_h;yy++) {
		if (tilemap_get(tilemap,xx,yy)==0) {
			global.collision_tiles[# xx,yy] = false;
		}
	}
}