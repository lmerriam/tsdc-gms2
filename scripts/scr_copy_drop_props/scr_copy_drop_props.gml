/// @description Copies the properties of one item to a new map
/// @param props The properties ds to copy

var _new_props = ds_map_create();
var _old_props = argument0;

// Copy props and nested data structures
ds_map_copy(_new_props,_old_props);
_new_props[? "Stats"] = ds_map_create();
ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);
_new_props[? "Buffs"] = ds_map_create();
ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);

return _new_props;