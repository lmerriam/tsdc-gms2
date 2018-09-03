/// @description Spawn enemies and destroy spawner
if (spawned and ds_list_size(enemies)<=0) {
	//if (creator != noone) {
	//	scr_complete_quest_phase(creator.quest_id,creator.phase_number);
	//}
	// Destroy mob when the enemies are defeated
	instance_destroy();

} else if (!spawned and point_distance(x,y,Player.x,Player.y)<325) {
	// Sapwn enemies
	repeat(quantity) {
		var inst = instance_create_layer(x,y,"entities",enemy);
		inst.mob = id;
		ds_list_add(enemies,inst);
		spawned = true;
	}
	//// If quest mob, set targets
	//if (creator != noone) {
	//	ds_list_destroy(creator.targets);
	//	creator.targets = enemies;
	//}
	//// If quest drops, assign to loot
	//if (quest_drop != noone) {
	//	var enemy_count = ds_list_size(enemies);
	//	repeat(quest_drop_count) {
	//		var inst = enemies[| irandom(enemy_count-1)];
	//		ds_map_add(inst.loot,quest_drop,1);
	//	}
	//}
}