/// Convert to outpost
scr_find_spawn_point(x,y,64,Chest,stats[? "Level"]);
instance_create(x,y,Outpost_Parent);

scr_announce("Outpost liberated!",noone);

ds_list_destroy(spawns);
ds_map_destroy(stats);

