/// @param event_name
/// @param script
/// @param expire
/// @param args
var event = argument0;
var script = argument1;
var expire = argument2;
var args = argument3;

var observer = ds_map_create();
observer[? "event"] = event;
observer[? "script"] = script;
observer[? "expire"] = expire;
observer[? "arguments"] = args;

ds_list_add(global.observers,observer);