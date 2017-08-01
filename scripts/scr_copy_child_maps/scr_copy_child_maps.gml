/// @description Copy all keys in a map to a new map
/// @param target
/// @param source

var target = argument0;
var source = argument1;

ds_map_clear(target);

if (ds_map_size(source) > 1) {

	var key = ds_map_find_first(source);

	for(var i=0;i<ds_map_size(source);i++) {
		target[? key] = ds_map_create();
		ds_map_copy(target[? key],source[? key]);
		//show_debug_message("Copying: " + key);
		key = ds_map_find_next(source,key);
	}
}