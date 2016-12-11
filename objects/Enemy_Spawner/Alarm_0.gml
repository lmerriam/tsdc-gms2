/// Spawn instances

// Add objects to spawn list
repeat(stats[? "Quantity"]) {
    ds_list_add(spawns,stats[? "Object"]);
}

event_inherited();

