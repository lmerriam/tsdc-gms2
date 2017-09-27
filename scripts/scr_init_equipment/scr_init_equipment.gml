/// @param instance
/// @param item_name

var inst = argument0;
var item_name = argument1;

// Get DS
var equipment = global.equipment[? item_name];
var props = scr_copy_drop_props(equipment[? "Properties"]);

// Assign properties
inst.properties = props;

// Create stats
props[? "Buffs"] = ds_map_create();

// Assign sprite
props[? "Sprite"] = asset_get_index(props[? "Sprite"]);
inst.sprite_index = props[? "Sprite"];

with (inst) { sprite_set_offset(sprite_index,sprite_width/2,sprite_height/2); }

var roll = scr_choose_rarity(0.25,0.25,0.15);
scr_buff_equipment(props,roll);