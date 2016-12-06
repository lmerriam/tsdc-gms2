/// Collect expr
with (other) { instance_destroy(); exit; }

// Level up
stats[? "Experience"] += 1;

if (base_stats[? "Experience"] >= base_stats[? "Next Level Experience"]) {
    base_stats[? "Level"] += 1;
    base_stats[? "Next Level Experience"] += base_stats[? "Next Level Experience"] + (base_stats[? "Level"] * 2);
    base_stats[? "Max Health"] += 2;
    base_stats[? "Health"] = base_stats[? "Max Health"];
    base_stats[? "Max Stamina"] += 2;
    base_stats[? "Stamina"] = base_stats[? "Max Stamina"];
    scr_announce("Achieved level " + string(base_stats[? "Level"]), noone);
}



