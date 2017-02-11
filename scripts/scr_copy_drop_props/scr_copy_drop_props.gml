/// @description Copies the properties of one item to a new map
/// @param props The properties ds to copy

var _new_props = ds_map_create();
var _old_props = argument0;

// Get text grid width so it can be duplicated
//var gridw = ds_grid_width(_old_props[? "Text"]);
//var gridh = ds_grid_height(_old_props[? "Text"]);

// Copy props and nested data structures
ds_map_copy(_new_props,_old_props);
_new_props[? "Stats"] = ds_map_create();
ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);
_new_props[? "Buffs"] = ds_map_create();
ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);
//_new_props[? "Text"] = ds_grid_create(gridw,gridh);
//ds_grid_copy(_new_props[? "Text"],_old_props[? "Text"]);

return _new_props;