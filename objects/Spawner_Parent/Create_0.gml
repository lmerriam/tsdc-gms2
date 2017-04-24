/// Init spawner
event_inherited();

stats = ds_map_create();
stats[? "Level"] = 1;
properties[? "Stats"] = stats;

spawns = ds_list_create();

instance_deactivate_object(self);

alarm[0] = 1;