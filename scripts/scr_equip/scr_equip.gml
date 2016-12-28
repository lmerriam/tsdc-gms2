///scr_equip(obj)
inst = argument[0];
obj = inst.object_index;
var prev_obj;

if (object_is_ancestor(obj,Drop_Weapon_Parent)) {
	var props = ds_map_create();
	ds_map_copy(props,inst.properties);
    prev_obj = global.equipment_slots[# 0,0];
    global.equipment_slots[# 0,0] = props;
} else if (object_is_ancestor(obj,Drop_Scroll_Parent)) {
	var props = ds_map_create();
	ds_map_copy(props,inst.properties);
    prev_obj = global.equipment_slots[# 0,1];
    global.equipment_slots[# 0,1] = props;
} else if (object_is_ancestor(obj,Drop_Armor_Parent)) {
	var props = ds_map_create();
	ds_map_copy(props,inst.properties);
    prev_obj = global.equipment_slots[# 0,2];
    global.equipment_slots[# 0,2] = props;
} else if (object_is_ancestor(obj,Drop_Gem_Parent)) {
	var props = ds_map_create();
	ds_map_copy(props,inst.properties);
    prev_obj = global.equipment_slots[# 0,3];
    global.equipment_slots[# 0,3] = props;
} else {
    show_message("Cant equip that object");
	exit;
}

if (prev_obj != noone) scr_send_to_inv(prev_obj);

// Update drop tooltips TODO: this is no longer valid with DS-based inv system
with(Drop_Parent) scr_update_drop_tooltip();

instance_destroy(inst);