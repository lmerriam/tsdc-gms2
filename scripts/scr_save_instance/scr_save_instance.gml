///scr_save_instance(instance,map_to_save_to)
inst = argument0;
map = argument1;

// Save object index (we will create the object from this when loading)
map[? "object_index"] = inst.object_index;

// Save the item's stats
ds_map_add_map(map,"Properties",inst.properties);

// Save the item's position
map[? "x"] = inst.x;
map[? "y"] = inst.y;
