//show_debug_message(ds_map_find_first(events));
//scr_debug_list(observers);
//scr_debug_map(events);
for(var i=0;i<ds_list_size(observers);i++) {
	var observer = observers[| i];
	var script = observer[? "script"];
	var expire = observer[? "expire"];
	var observer_arguments = observer[? "arguments"];
	var event_name = observer[? "event"];
	var event_set = events[? event_name];
	
	if (event_set != undefined) {
		for (var i=0;i<ds_list_size(event_set);i++) {
			var event_arguments = event_set[| i];
			var success = script_execute(script,event_arguments,observer_arguments);
			if (expire and success) ds_list_delete(observers,i);
		}
	}
}

ds_map_destroy(events);