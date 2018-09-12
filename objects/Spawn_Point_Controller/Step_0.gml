var current_enemy_count = ds_list_size(enemies);
var remaining_spawns = ds_list_size(spawns);

if (remaining_spawns > 0 and scr_alarm_passed(spawn_timer) and current_enemy_count < max_enemy_count and scr_distance_to_player()<=trigger_range) {
	var rand = irandom(ds_list_size(spawn_points)-1);
	var spawn_point = spawn_points[| rand];
	var xx = spawn_point.x;
	var yy = spawn_point.y;
	var spawn = spawns[| 0];
	var inst = instance_create_layer(xx,yy,"entities",spawn);
	
	// Remove from spawns and add to enemies
	ds_list_delete(spawns,0);
	ds_list_add(enemies,inst);
	
	// Attach observer to enemies
	var args = ds_map_create();
	args[? "enemy_id"] = inst;
	args[? "id"] = id;
	scr_observer_register("destroy spawn " + string(inst.id),"enemy destroyed",scr_observer_spawnerEnemyDefeated,args);
	
	// Increment spawn timer
	spawn_timer = scr_sec_from_now(.5);
}

// If no more enemies left to spawn, destroy the spawner
if (ds_list_size(enemies) == 0 and remaining_spawns == 0) {
	if reward_item instance_create_layer(x,y,"entities",reward_item);
	instance_destroy();
}