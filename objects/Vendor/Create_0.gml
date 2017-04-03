/// Init vendor

event_inherited();

// Set up stats
stats = ds_map_create();
properties[? "Stats"] = stats;

// Set up inv
properties[? "Inventory"] = ds_grid_create(3,5);
ds_grid_clear(properties[? "Inventory"],noone);