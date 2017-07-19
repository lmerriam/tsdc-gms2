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
	}
	show_debug_message( "Rarity: " + rarity);
	
	// Set up the pool of buffs and boosts to pull from
	var equipment_buff_pool = ds_list_create();
	var equipment_statboost_pool = ds_list_create();
	
	repeat (rarity_roll) {
		
	}
	
	
    image_index = 1;
    properties[? "Opened"] = true;
}

