/// Spawn loot
if (!properties[? "Opened"]) {
    var drop = scr_spawn_drop(x,y,properties[? "Loot"],stats[? "Level"]);
	
	// Choose rarity of the item
	var rarity_roll = choose(0,1,2,3);
	var rarity;
	switch rarity_roll {
		case 1: rarity = "Uncommon";
		case 2: rarity = "Rare";
		case 3: rarity = "Epic";
		case 4: rarity = "Legendary";
		default: rarity = "Common";
	};
	show_debug_message( "Rarity: " + rarity);
	
	// Set up the pool of buffs and boosts to pull from
	var equipment_blueprints = ds_map_create();
	
	var smg = ds_map_create();
	smg[? "Stats"] = ds_map_create();
	
	var buff_pool = ds_map_create();
	smg[? "Buff Pool"] =  buff_pool;
		
	
	equipment_blueprints[? "SMG"] = smg;
	
	
	// Equipment type
		// Base stats
		// Available buffs
			// Buff values
	
	repeat (rarity_roll) {
		
	}
	
    image_index = 1;
    properties[? "Opened"] = true;
}

