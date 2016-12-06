/// Init the slime
event_inherited();

stats[? "Level"] = 1;
stats[? "Damage"] = 5;
stats[? "Max Health"] = 30;
stats[? "Health"] = stats[? "Max Health"];
stats[? "Experience"] = 5;

// Loot
loot = ds_map_create();
ds_map_add(loot, Weapon_Pistol, .05);
ds_map_add(loot, Weapon_Blade, .05);
ds_map_add(loot, Health, .1);

