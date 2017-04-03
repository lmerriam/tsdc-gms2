/// Init object
image_speed = 0;

event_inherited();

// Create stats
stats = ds_map_create();
stats[? "Level"] = 1;

// Create buffs
buffs = ds_map_create();

// Create properties
properties[? "Object"] = object_index;
properties[? "Sprite"] = sprite_index;
properties[? "Stats"] = stats;
properties[? "Buffs"] = buffs;
properties[? "Value"] = 100;