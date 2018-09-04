/// @param event_id
/// @param script
/// @param args...

var event_id = argument[0];
var script = argument[1];
var args = argument[2];

// Create the observer
var observer = ds_map_create();
observer[? "event id"] = event_id;
observer[? "script"] = script;
observer[? "arguments"] = args;

// Check for identical observers and return them instead (this could be made faster)
for (var i=0; i<ds_list_size(global.observers); i++) {
	var observer_existing = global.observers[| i];
	var identical = scr_ds_map_check_identical(observer,observer_existing);
	if (identical) return observer_existing;
}

// Add new observer
ds_list_add(global.observers,observer);