/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param item_height

var list_props = ds_map_create();

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var item_height = argument4;
var item_padding = 0;

// Set up inventory list dimensions
list_props[? "item height"] = item_height;
list_props[? "item width"] = x2-x1;
list_props[? "x1"] = x1;
list_props[? "x2"] = x2;
list_props[? "y1"] = y1;
list_props[? "y2"] = y2;
list_props[? "offset"] = 0;
list_props[? "drag momentum"] = 0;
list_props[? "friction"] = 0.9;
list_props[? "offset origin"] = list_props[? "offset"];
list_props[? "drag on list"] = false;

return list_props;