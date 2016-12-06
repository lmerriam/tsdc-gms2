///scr_calc_stats

ds_map_copy(Player.stats,Player.base_stats);

// Iterate through equipment slots
for (i=0; i<ds_grid_height(global.equipment_slots); i++) {
    var item = global.equipment_slots[# 0, i];
    
    // Iterate through stats in the current item
    var current_key = ds_map_find_first(item.stats);
    var size = ds_map_size(item.stats);
    for(var j = 0; j<ds_map_size(item.stats); j++) {
        
        // Update the related player stat to include item boosts
        Player.stats[? current_key] = scr_player_base_stat(current_key) + item.stats[? current_key];
        
        // Increment the current ds_map key
        current_key = ds_map_find_next(item.stats, current_key);
    }
}
