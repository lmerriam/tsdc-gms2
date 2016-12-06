/// Spawn instances

// Add objects to spawn list
repeat(stats[? "Quantity"]) {
    ds_list_add(spawns,asset_get_index(stats[? "Object"]));
}

event_inherited();

