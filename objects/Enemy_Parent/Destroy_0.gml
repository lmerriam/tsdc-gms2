/// Loot and XP and
event_inherited();

// Emit event
var args = ds_map_create();
args[? "properties"] = properties;
args[? "id"] = id;
scr_event_emit("enemy destroyed",args);

// Deregister to mob
if (mob != noone and instance_exists(mob)) {
	ds_list_delete(mob.enemies,ds_list_find_index(mob.enemies,id));
	if (ds_list_size(mob.enemies) <= 0) instance_destroy(mob);
}

// Spawn loot
if (ds_exists(loot,ds_type_map)) {
	var current_key = ds_map_find_first(loot); // Start with the first key in the map
	for (i=0; i < ds_map_size(loot); i++) {
	    if (scr_chance(ds_map_find_value(loot, current_key))) { // Get the spawn chance of the current drop
	        var inst = scr_spawn_equipment(x, y, current_key); // Spawn the current drop
			with(inst){physics_apply_local_impulse(inst.x,inst.y,irandom_range(-2,2),irandom_range(-2,2))};
	    }
	    current_key = ds_map_find_next(loot,current_key); // Move to next key
	}
}

// TODO: Move gold and XP to an object variable
// TODO: Also remove EXP objects and change to nice animation of XP bar
scr_spawn_gold(stats[? "Level"]*irandom_range(8,11));

var counter = instance_create_layer(x,y,"system_objects",Exp_Counter);
counter.count = stats[? "Experience"];
scr_give_xp(stats[? "Experience"]);

//for (var i = 0; i <= stats[? "Experience"]; i++) {
//    instance_create_layer(x+random_range(-16,16),y+random_range(-16,16),"entities",Expr);
//}

if ds_exists(properties,ds_type_map) ds_map_destroy(properties);
if ds_exists(loot,ds_type_map) ds_map_destroy(loot);

scr_increment_combo();