///scr_equip_instance(inst)
var inst = argument[0];

var success = scr_equip(inst.properties);

if (success) {
	instance_destroy(inst);
}