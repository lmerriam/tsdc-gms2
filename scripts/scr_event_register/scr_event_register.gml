/// @param name
/// @param expire
/// @param script
/// @param args...

var name = argument[0];
var script = argument[1];

var event_map = ds_map_create();
event_map[? "name"] = name;
event_map[? "script"] = script;

// Transcribe optional args
var args = ds_list_create();
var arg_count = array_length_1d(argument);
var req_arg_count = 3;
for (var i=req_arg_count;i<arg_count;i++) {
	args[| i-req_arg_count] = argument[i];
}

event_map[? "args"] = args;

// Add to events
ds_list_add(global.events,event_map);