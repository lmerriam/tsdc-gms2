/// @param event_name
/// @param script
/// @param persist
/// @param args...
var event = argument0;
var script = argument1;
var persist = argument2;
var args = argument3;

// Create the observer
var observer = ds_map_create();
observer[? "event name"] = event;
observer[? "script"] = script;
observer[? "persist"] = persist;
observer[? "room"] = room;
observer[? "arguments"] = args;

// Check for identical observers and return them instead (this could be made faster)
//for (var i=0; i<ds_list_size(global.observers); i++) {
//	var observer_existing = global.observers[| i];
	//var identical = scr_ds_map_check_identical(observer,observer_existing);
	//if identical return observer_existing;
//	if (observer_id == observer_existing[? "id"]) {
//		ds_list_delete(global.observers,i);
//		ds_map_destroy(observer_existing);
//	}
//}

// Add new observer
ds_list_add(global.observers,observer);
return observer;