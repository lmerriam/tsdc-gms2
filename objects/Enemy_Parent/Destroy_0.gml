/// Loot and XP and
event_inherited();

for (var i = 0; i <= stats[? "Experience"]; i++) {
    instance_create_layer(x+random_range(-16,16),y+random_range(-16,16),"entities",Expr);
}

var current_key = ds_map_find_first(loot); // Start with the first key in the map
for (i=0; i < ds_map_size(loot); i++) {
    if (scr_chance(ds_map_find_value(loot, current_key))) { // Get the spawn chance of the current drop
        scr_spawn_drop(x, y, current_key, stats[? "Level"]-(irandom_range(0,stats[? "Level"]/5))); // Spawn the current drop
    }
    current_key = ds_map_find_next(loot,current_key); // Move to next key
}

if ds_exists(stats,ds_type_map) ds_map_destroy(stats);
if ds_exists(loot,ds_type_map) ds_map_destroy(loot);

