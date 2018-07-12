/// @description send an event to the event controller
/// @param event_name
/// @param arguments
var event = argument0;
var arguments = argument1;

if (global.events[? event] == undefined) {
	global.events[? event] = ds_list_create();
}

ds_list_add(global.events[? event],arguments);