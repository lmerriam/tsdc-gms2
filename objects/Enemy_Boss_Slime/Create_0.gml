/// Init the slime
event_inherited();

stats[? "Level"] = 10;
stats[? "Damage"] = 15;
stats[? "Max Health"] = 60;
stats[? "Health"] = stats[? "Max Health"];
stats[? "Experience"] = 25;


// Loot
loot = ds_map_create();
ds_map_add(loot, "Pistol", .05);
ds_map_add(loot, "Blade", .05);