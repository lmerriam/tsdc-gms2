/// @param props
/// @param number_of_buffs
var props = argument0;
var buff_count = argument1;
var item_buffs = props[? "Buffs"];

while ds_map_size(item_buffs) < buff_count {
	var final_key = irandom_range(1,ds_map_size(global.buffs))-1;
	var buff = ds_map_find_first(global.buffs);
	for (var i=0; i<final_key; i++){
		buff = ds_map_find_next(global.buffs,buff);
	}
	if (item_buffs[? buff] == undefined) {
		var value = ds_map_create();
		ds_map_copy(value,global.buffs[? buff]);
		ds_map_add(props[? "Buffs"],buff,value);
	}
}

// Set up rarity
props[? "Rarity"] = scr_get_rarity(props[? "Buffs"]);
props[? "Rarity color"] = scr_get_rarity_color(props[? "Rarity"]);
