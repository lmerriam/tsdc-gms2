///scr_custom_properties(instance,properties)
var instance = argument0;
var properties = argument1;

// Iterate through custom props
var current_key = ds_map_find_first(properties);
var size = ds_map_size(properties);
for(var i = 0; i<ds_map_size(properties); i++) {
    
    // Update the related player stat to include item boosts
    instance.stats[? current_key] = ds_map_find_value(properties, current_key);
    
    // Increment the current ds_map key
    current_key = ds_map_find_next(properties, current_key);
}
// TODO: figure out if this map is persisting, because it doesn't seem like the json map in scr_load_map contains this
//ds_map_destroy(properties);
