
// Overworld sprite
overworld_spr_originx = 0;
overworld_spr_originy = GUI.tab_height;
overworld_spr = spr_overworld;
overworld_spr_height = sprite_get_height(spr_overworld);
overworld_spr_width = sprite_get_width(spr_overworld);
overworld_spr_ratio = (global.window_height-overworld_spr_originy)/overworld_spr_height;

// Locations
overworld_locations = scr_load_json("overworld_locations");
global.overworld_locations = overworld_locations;