/// @param list
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param item_height

var list = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var item_height = argument5;
var item_padding = 0;

// Set up inventory list dimensions
var list_props = ds_map_create();
list_props[? "list"] = list;
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
list_props[? "selected item"] = noone;

return list_props;