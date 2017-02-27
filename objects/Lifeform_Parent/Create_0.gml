/// Init the lifeform
phy_fixed_rotation = true;

// Set up properties
properties = ds_map_create();

stats = ds_map_create();
stats[? "Level"] = 1;
properties[? "Stats"] = stats;

effects = ds_map_create();
properties[? "Effects"] = effects;

buffs = ds_map_create();
properties[? "Buffs"] = buffs;

// Set basic vars
freeze_slow = 0;
checking_collisions = false;