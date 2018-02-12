/// scr_give_xp
/// @description Give the player character XP
/// @param quantity
var quantity = argument0;

var base_stats = Player.properties[? "Base Stats"];
base_stats[? "Experience"] += quantity;
var stats = Player.stats;

if (base_stats[? "Experience"] >= base_stats[? "Next Level Experience"]) {
	
    base_stats[? "Level"] += 1;
    base_stats[? "Next Level Experience"] += base_stats[? "Next Level Experience"] + (base_stats[? "Level"] * 2);
    base_stats[? "Max Health"] += 2;
    base_stats[? "Health"] = base_stats[? "Max Health"];
	stats[? "Max Health"] = base_stats[? "Max Health"];
	stats[? "Health"] = base_stats[? "Max Health"];
    base_stats[? "Max Stamina"] += 2;
    base_stats[? "Stamina"] = base_stats[? "Max Stamina"];
	base_stats[? "Stat points"] += 2;
	scr_calc_stats();
    scr_announce("Achieved level " + string(base_stats[? "Level"]));
}
