/// scr_get_instance_stat(id,stat,value)
var inst = argument0;
var stat = argument1;
var value = argument2;
var props = inst.properties;
var stats = props[? "Stats"];

stats[? stat] = value;
