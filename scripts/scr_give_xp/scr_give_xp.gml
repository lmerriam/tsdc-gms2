/// scr_give_xp
/// @description Give the player character XP
/// @param quantity
var quantity = argument0;

var base_stats = Player.properties[? "Base Stats"];
var stats = Player.stats;

var xp_to_next_level = base_stats[? "Next Level Experience"] - base_stats[? "Experience"];
var remainder = quantity - xp_to_next_level;

while (remainder >= 0) {
	base_stats[? "Experience"] += xp_to_next_level;
	
	// Increase Player's stats
    base_stats[? "Level"] += 1;
    base_stats[? "Next Level Experience"] += base_stats[? "Next Level Experience"] + (base_stats[? "Level"] * 2);
    base_stats[? "Max Health"] += 2;
    base_stats[? "Health"] = base_stats[? "Max Health"];
	stats[? "Max Health"] = base_stats[? "Max Health"];
	stats[? "Health"] = base_stats[? "Max Health"];
    base_stats[? "Max Stamina"] += 2;
    base_stats[? "Stamina"] = base_stats[? "Max Stamina"];
	base_stats[? "Stat points"] += 2;
	
	// Recalculate the player's stats
	scr_calc_stats();
	
	// Announce the levelup
    scr_announce_simple("Achieved level " + string(base_stats[? "Level"]));
	
	// Give the player the amount of XP they went over by
	//scr_give_xp(remainder);
	xp_to_next_level = base_stats[? "Next Level Experience"] - base_stats[? "Experience"];
	remainder = remainder - xp_to_next_level;
}

if (remainder > 0) base_stats[? "Experience"] += remainder;

