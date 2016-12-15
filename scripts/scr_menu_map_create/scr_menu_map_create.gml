/// Init map elements

global.current_map = sprite_add(working_directory + "tsdcTest2-mini.png",0,0,false,0,0);
current_location = noone;

// Map dimensions
mapw = global.window_width;
maph = global.window_height-70;

// Map image sprite width
sprw = sprite_get_width(global.current_map);
sprh = sprite_get_height(global.current_map);
// Ratio of map sprite dimensions to final map area dimensions
ratiow = mapw/sprw;
ratioh = maph/sprh;

// Choose which dimension to fit to, that is our final ratio
if (ratioh > ratiow) {
    ratio = ratiow;
} else {
    ratio = ratioh;
}

// Get map sprite dimensions
map_spr_w = sprw*ratio;
map_spr_h = sprh*ratio;

// Map offsets
map_offset_y = 68;
map_offset_x = window_width/2 - map_spr_w/2;