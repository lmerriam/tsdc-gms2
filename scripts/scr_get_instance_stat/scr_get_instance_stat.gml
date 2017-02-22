/// scr_get_instance_stat(id,stat)
var inst = argument0;
var stat = argument1;
var props = inst.properties;

return ds_map_find_value(props[? "Stats"],stat);