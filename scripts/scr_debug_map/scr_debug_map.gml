///scr_debug_map(ds_map)
var map = argument0;

// Iterate through the map
var current_key = ds_map_find_first(map);
var size = ds_map_size(map);
for(var i = 0; i<size; i++) {
    
    // Print the key/value pair
    show_debug_message(string(current_key) + ": " + string(map[? current_key]));
    
    // Increment the current ds_map key
    current_key = ds_map_find_next(map, current_key);
}
