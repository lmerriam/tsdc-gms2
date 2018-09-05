/// @param event_id
/// @param args

var event_id = argument0;
var event_args = argument1;

var observers = global.observers;
for (var i=0; i<ds_list_size(observers); i++) {
	var observer = observers[| i];
	var observer_id = observer[? "event name"];
	var observer_script = observer[? "script"];
	var observer_args = observer[? "arguments"];
	
	if (event_id == observer_id) {
		script_execute(observer_script,observer_args,event_args);
	}
}