/// @param event_id
/// @param script
/// @param args...

var event_id = argument[0];
var script = argument[1];
var args = argument[2];

// Transcribe optional args
//var args = noone;
//var req_argument_count = 2;
//if (argument_count > argument_count) {
//	args = ds_list_create();
//	for (var i=argument_count;i<argument_count;i++) {
//		args[| i-argument_count] = argument[i];
//	}
//}

// Create the observer
var observer = ds_map_create();
observer[? "event id"] = event_id;
observer[? "script"] = script;
observer[? "arguments"] = args;

// Add to the 
ds_list_add(global.observers,observer);

return observer;