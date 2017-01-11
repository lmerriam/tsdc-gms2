///scr_equip_instance(obj)
// TODO: refactor this into scr_equip_object which contains scr_equip_props
var inst = argument[0];

var success = scr_equip(inst.properties);

// Update drop tooltips TODO: this is no longer valid with DS-based inv system
with(Drop_Parent) scr_update_drop_tooltip(properties);

if (success) instance_destroy(inst);