///scr_equip_instance(obj)
// TODO: refactor this into scr_equip_object which contains scr_equip_props
var inst = argument[0];

var success = scr_equip(inst.properties);

if (success) instance_destroy(inst);