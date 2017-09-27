///scr_equip_instance(obj)
// TODO: refactor this into scr_equip_object which contains scr_equip_props
var inst = argument[0];

var success = scr_equip(inst.properties);

if (success) {
	instance_destroy(inst);
	// Send an event
	var args;
	args[0] = inst;
	scr_event_send("send instance to inv",args);
	scr_debug_map(global.events);
}