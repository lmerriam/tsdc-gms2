// Set up minimap variables
global.map_spr_width = sprite_get_width(global.current_map);
global.map_spr_height = sprite_get_height(global.current_map);
global.map_spr_ratio = room_width / global.map_spr_width;

// Map dimensions
var map_area_w = global.window_width;
var map_area_h = global.window_height-TAB_BAR_HEIGHT;

// Ratio of map sprite dimensions to final map area dimensions
var ratiow = map_area_w/global.map_spr_width;
var ratioh = map_area_h/global.map_spr_height;

// Choose which dimension to fit to, that is our final ratio
if (ratioh > ratiow) {
    ratio = ratiow;
} else {
    ratio = ratioh;
}

// Get map sprite dimensions
map_w = global.map_spr_width*ratio;
map_h = global.map_spr_height*ratio;

// Map offsets
map_offset_y = TAB_BAR_HEIGHT;
map_offset_x = window_width/2 - map_w/2;

// Init fog
ds_grid_resize(fog,room_width/fog_tile_size,room_height/fog_tile_size);
show_debug_message("Gridw: " + string(ds_grid_width(fog)) + " Gridh: " + string(ds_grid_height(fog)));
ds_grid_clear(fog,false);