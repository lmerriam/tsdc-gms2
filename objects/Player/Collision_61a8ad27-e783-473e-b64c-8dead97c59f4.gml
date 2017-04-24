/// Collect expr
with (other) { instance_destroy(); }

// Level up
base_stats[? "Experience"] += 1;

if (base_stats[? "Experience"] >= base_stats[? "Next Level Experience"]) {
    base_stats[? "Level"] += 1;
    base_stats[? "Next Level Experience"] += base_stats[? "Next Level Experience"] + (base_stats[? "Level"] * 2);
    base_stats[? "Max Health"] += 2;
    base_stats[? "Health"] = base_stats[? "Max Health"];
    base_stats[? "Max Stamina"] += 2;
    base_stats[? "Stamina"] = base_stats[? "Max Stamina"];
	base_stats[? "Stat points"] += 2;
	scr_calc_stats();
    scr_announce("Achieved level " + string(base_stats[? "Level"]), noone);
}
