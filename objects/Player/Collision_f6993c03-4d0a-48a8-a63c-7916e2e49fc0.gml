/// Collect health
with (other) { instance_destroy(); exit; }

// Health up
stats[? "Health"] = min(stats[? "Health"]+5, stats[? "Max Health"]);