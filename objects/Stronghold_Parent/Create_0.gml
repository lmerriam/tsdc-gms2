/// Init stronghold
event_inherited();

stats = ds_map_create();
properties[? "Stats"] = stats;
properties[? "Spawns"] = ds_list_create();
properties[? "Spawned"] = ds_list_create();

stats[? "Level"] = 5;

repeat(2) ds_list_add(properties[? "Spawns"],Slime);
//repeat(2) ds_list_add(properties[? "Spawns"],Slime_2);

alarm[0] = 1;