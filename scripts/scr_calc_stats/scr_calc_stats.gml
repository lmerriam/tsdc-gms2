///scr_calc_stats

ds_map_copy(Player.stats,Player.base_stats);

// Iterate through equipment slots
for (i=0; i<ds_grid_height(global.equipment_slots); i++) {
    var props = global.equipment_slots[# 0, i];
	show_debug_message("Object: " + object_get_name(props[? "Object"]));
	var item_stats = props[? "Stats"];
	show_debug_message("Equipment stats ds_map index: " + string(item_stats));
    
    // Iterate through stats in the current item
    var current_key = ds_map_find_first(item_stats);
    var size = ds_map_size(item_stats);
    for(var j = 0; j<ds_map_size(item_stats); j++) {
        
        // Update the related player stat to include item boosts
        if (Player.stats[? current_key] != undefined) Player.stats[? current_key] = scr_player_base_stat(current_key) + item_stats[? current_key];
        
        // Increment the current ds_map key
        current_key = ds_map_find_next(item_stats, current_key);
    }
}
