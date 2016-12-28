/// Init equipment stats
event_inherited();

// Roll stats
stats[? "Health"] = irandom_range(5,10);
stats[? "Health Regen"] = irandom_range(1,3);
stats[? "Stamina"] = 0;
stats[? "Stamina Regen"] = 0;
stats[? "Speed"] = 0;
stats[? "Defense"] = irandom_range(3,5);

// Buffs
buffs[? "thorns"] = true;
buffs[? "thorns_damage"] = 2;

// Set up properties
properties[? "Name"] = "Heavy Armor";
properties[? "Stats"] = stats;
properties[? "Buffs"] = buffs;