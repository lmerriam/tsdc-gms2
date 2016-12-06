///scr_load_instance(item_map)
var item = argument0;
var index = item[? "object_index"];
var xx = item[? "x"];
var yy = item[? "y"];
var saved_stats = item[? "Stats"];

// Create the instance
var inst = instance_create(xx,yy,index);
ds_map_copy(inst.stats,saved_stats);
return inst;
