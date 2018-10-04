var item_name = argument0;

// Get DS
var equipment = scr_get_equipment(item_name);

if (equipment) {
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
} else {
	show_message("Can't find" + string(item_name) + "in the library");
	return noone;
}