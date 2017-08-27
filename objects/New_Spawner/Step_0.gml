if (scr_alarm_passed(spawn_timer) and current_enemies < max_enemies and scr_distance_to_player()<=trigger_range) {
	var index = irandom_range(0,ds_list_size(enemies)-1);
	var enemy = enemies[| index];
	
	// If there are enemies of the particular type left, spawn them
	if (enemy[? "Quantity"] > 0) {
		var inst = instance_create_layer(x,y,"entities",enemy[? "Object"]);
		inst.spawner = id;
		enemy[? "Quantity"] -=1;
		current_enemies += 1;
		spawn_timer = scr_sec_from_now(.5);
		
	// Remove a particular enemy when there are no more left to spawn
	} else {
		ds_map_destroy(enemy);
		ds_list_delete(enemies,index);
	}
}

// If no more enemies left to spawn, destroy the spawner
if (ds_list_size(enemies) == 0) {
	instance_create_layer(x,y,"entities",Chest);
	instance_destroy();
}