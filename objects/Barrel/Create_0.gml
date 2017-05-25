/// Init barrel
event_inherited();

stats = ds_map_create();
stats[? "Health"] = 10;
properties[? "Stats"] = stats;

effects = noone;
phy_fixed_rotation = true;
