/// scr_equip(properties_ds)
var _props = argument0;
var _type = _props[? "Type"];

var _prev_obj;
//scr_debug_map(_props);

// Detect equipment type and send it to the correct slot
var slot;
switch(_type) {
	case "Weapon":
		slot = 0;
		script_execute(asset_get_index(_props[? "Equip Script"]));
		break;
	case "Spell":
		slot = 1;
		script_execute(asset_get_index(_props[? "Equip Script"]));
		break;
	case "Armor":
		slot = 2;
		break;
	case "Gem":
		slot = 3;
		break;
}

// Equip the new item
_prev_obj = global.equipment_slots[# 0,slot];
global.equipment_slots[# 0,slot] = scr_copy_drop_props(_props);

// Send the previously equipped item to the inventory
if (_prev_obj != noone) scr_send_to_inv(_prev_obj,global.inventory_slots);

// Send an event
//var args = [];
//args[0] = _props;
//args[1] = _type;
//scr_event_send("equip item",args);

return true;