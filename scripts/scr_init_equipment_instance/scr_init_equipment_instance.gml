/// @param instance
/// @param equipment_id

var inst = argument0;
var item_name = argument1;

// Get DS
var props = scr_init_equipment(item_name);

// Assign props
inst.properties = props;

// Assign sprite and set offset
inst.sprite_index = props[? "Sprite"];
with (inst) { sprite_set_offset(sprite_index,sprite_width/2,sprite_height/2); }