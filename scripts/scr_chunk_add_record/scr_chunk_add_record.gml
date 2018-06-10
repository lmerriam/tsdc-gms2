/// @param chunk_x
/// @param chunk_y
/// @param key
/// @param value

var chunk_x = argument0;
var chunk_y = argument1;
var key = argument2;
var value = argument3;

var map = global.chunks[# chunk_x, chunk_y];

map[? key] = value;

return map;