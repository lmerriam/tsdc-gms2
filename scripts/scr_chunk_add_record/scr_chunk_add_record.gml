/// @param chunk_x
/// @param chunk_y
/// @param key
/// @param value

var chunk_x = argument0;
var chunk_y = argument1;
var key = argument2;
var value = argument3;

// If nothing is in the chunk, create a map
if (global.chunks[# chunk_x, chunk_y] == noone) {
	global.chunks[# chunk_x, chunk_y] = ds_map_create();
}
var map = global.chunks[# chunk_x, chunk_y];

// If the list doesn't exist, create it
if (map[? key] == undefined) {
	map[? key] = ds_list_create();
}

ds_list_add(map[? key],value);

//return map;