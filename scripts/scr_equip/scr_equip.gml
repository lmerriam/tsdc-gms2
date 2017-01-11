/// scr_equip_props(properties_ds)
var new_obj = argument0;
show_debug_message("Equipping ds: " + string(new_obj));

var prev_obj;
var props = ds_map_create();
var type = new_obj[? "Type"];



if (type == "Weapon") {
	ds_map_copy(props,new_obj);
	props[? "Stats"] = ds_map_create();
	ds_map_copy(props[? "Stats"],new_obj[? "Stats"]);
	props[? "Buffs"] = ds_map_create();
	ds_map_copy(props[? "Buffs"],new_obj[? "Buffs"]);
	props[? "Text"] = ds_map_create();
	ds_map_copy(props[? "Text"],new_obj[? "Text"]);
    prev_obj = global.equipment_slots[# 0,0];
    global.equipment_slots[# 0,0] = props;
} else if (type == "Scroll") {
	ds_map_copy(props,new_obj);
	props[? "Stats"] = ds_map_create();
	ds_map_copy(props[? "Stats"],new_obj[? "Stats"]);
	props[? "Buffs"] = ds_map_create();
	ds_map_copy(props[? "Buffs"],new_obj[? "Buffs"]);
	props[? "Text"] = ds_map_create();
	ds_map_copy(props[? "Text"],new_obj[? "Text"]);
    prev_obj = global.equipment_slots[# 0,1];
    global.equipment_slots[# 0,1] = props;
} else if (type == "Armor") {
	ds_map_copy(props,new_obj);
	props[? "Stats"] = ds_map_create();
	ds_map_copy(props[? "Stats"],new_obj[? "Stats"]);
	props[? "Buffs"] = ds_map_create();
	ds_map_copy(props[? "Buffs"],new_obj[? "Buffs"]);
	props[? "Text"] = ds_map_create();
	ds_map_copy(props[? "Text"],new_obj[? "Text"]);
    prev_obj = global.equipment_slots[# 0,2];
    global.equipment_slots[# 0,2] = props;
} else if (type == "Gem") {
	ds_map_copy(props,new_obj);
	props[? "Stats"] = ds_map_create();
	ds_map_copy(props[? "Stats"],new_obj[? "Stats"]);
	props[? "Buffs"] = ds_map_create();
	ds_map_copy(props[? "Buffs"],new_obj[? "Buffs"]);
	props[? "Text"] = ds_map_create();
	ds_map_copy(props[? "Text"],new_obj[? "Text"]);
    prev_obj = global.equipment_slots[# 0,3];
    global.equipment_slots[# 0,3] = props;
} else {
    show_message("Cant equip that object");
	return false;
}

if (prev_obj != noone) scr_send_to_inv(prev_obj);

return true;