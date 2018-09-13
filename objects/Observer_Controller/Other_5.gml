//ds_list_destroy(global.observers);
//global.observers = ds_list_create();

for (var i=0; i<ds_list_size(global.observers); i++) {
	var observer = global.observers[| i];
	var persist = observer[? "persist"];
	var rm = observer[? "room"];
	
	// Remove any observers that should not persist
	if !persist and rm == room ds_list_delete(global.observers,i);
}