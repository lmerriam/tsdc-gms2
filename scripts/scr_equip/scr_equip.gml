/// scr_equip(props)
var props = argument0;
var type = props[? "Type"];

// Get currently equipped
var equipped_previous = global.equipment_slots[? type];

// Equip new item
global.equipment_slots[? type] = props;

// Send previously equipped item to inventory
if (equipped_previous != noone and equipped_previous != undefined) scr_send_to_inv(equipped_previous);

// Emit event
scr_event_emit("equip item",props)

return true;