var item_name = argument0;

// Get DS
var equipment = global.equipment[? item_name];
var props = scr_copy_drop_props(equipment[? "Properties"]);

// Create stats
props[? "Buffs"] = ds_map_create();

// Assign sprite
props[? "Sprite"] = asset_get_index(props[? "Sprite"]);

// Set rarity color
props[? "Rarity"] = scr_get_rarity(props[? "Buffs"]);
props[? "Rarity color"] = scr_get_rarity_color(props[? "Rarity"]);

// Debug
var roll = scr_choose_rarity(0.25,0.25,0.15);
scr_buff_equipment(props,roll);

return props;