/// Init vendor

event_inherited();

ds_list_add(global.locations,id);
discovered = false;

// Set up stats
stats = ds_map_create();
properties[? "Stats"] = stats;

// Set up inv
properties[? "Inventory"] = ds_grid_create(3,5);
ds_grid_clear(properties[? "Inventory"],noone);