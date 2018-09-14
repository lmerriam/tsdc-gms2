///scr_calc_stats

ds_map_copy(Player.properties[? "Stats"],Player.properties[? "Base Stats"]);

// Iterate through equipment slots
var size = ds_map_size(global.equipment_slots);
var key = ds_map_find_first(global.equipment_slots);
for (i=0; i<size; i++) {
    var props = global.equipment_slots[? key];
	if (props!=noone){
		//show_debug_message("Object: " + object_get_name(props[? "Object"]));
		var item_stats = props[? "Stats"];
		//show_debug_message("Equipment stats ds_map index: " + string(item_stats));
    
	    // Iterate through stats in the current item
	    var current_key = ds_map_find_first(item_stats);
	    var size = ds_map_size(item_stats);
	    for(var j = 0; j<size; j++) {
        
	        // Update the related player stat to include item boosts
	        if (scr_get_instance_stat(Player,current_key) != undefined) {
				var value = scr_player_base_stat(current_key) + item_stats[? current_key];
				scr_set_instance_stat(Player,current_key,value);
			}
        
	        // Increment the current ds_map key
	        current_key = ds_map_find_next(item_stats, current_key);
	    }
	}
	key = ds_map_find_next(global.equipment_slots,key);
}
