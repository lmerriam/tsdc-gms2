/// scr_equip_props(properties_ds)
var _props = argument0;
var _type = _props[? "Type"];

scr_update_drop_tooltip(_props);

var _prev_obj;


// Detect equipment type and send it to the correct slot
if (_type == "Weapon") {
	_prev_obj = global.equipment_slots[# 0,0];
	global.equipment_slots[# 0,0] = scr_copy_drop_props(_props);
} else if (_type == "Scroll") {
	_prev_obj = global.equipment_slots[# 0,1];
	global.equipment_slots[# 0,1] = scr_copy_drop_props(_props);
} else if (_type == "Armor") {
	_prev_obj = global.equipment_slots[# 0,2];
	global.equipment_slots[# 0,2] = scr_copy_drop_props(_props);
} else if (_type == "Gem") {
	_prev_obj = global.equipment_slots[# 0,3];
	global.equipment_slots[# 0,3] = scr_copy_drop_props(_props);
} else {
    show_message("Cant equip that object");
	return false;
}

if (_prev_obj != noone) scr_send_to_inv(_prev_obj);

return true;