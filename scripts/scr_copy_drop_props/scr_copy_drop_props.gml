/// @description Copies the properties of one item to a new map
/// @param props The properties ds to copy

var _new_props = ds_map_create();
var _old_props = argument0;
//scr_debug_map(_old_props[? "Stats"]);

// Copy props
ds_map_copy(_new_props,_old_props);

// Copy stats
_new_props[? "Stats"] = ds_map_create();
ds_map_copy(_new_props[? "Stats"],_old_props[? "Stats"]);

// Set up buffs
_new_props[? "Buffs"] = ds_map_create();
if (_old_props[? "Buffs"] != undefined) {
	// TODO: make sure we don't need scr_copy_child_maps here
	ds_map_copy(_new_props[? "Buffs"],_old_props[? "Buffs"]);
}

return _new_props;