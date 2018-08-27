/// @description Spawn enemies and destroy spawner
if (last_spawn > 0 and ds_list_size(enemies)<=0) {
	if (creator != noone) {
		scr_complete_quest_phase(creator.quest_id,creator.phase_number);
	}
	// Destroy mob when the enemies are defeated
	instance_destroy();

} else if (last_spawn = 0 and point_distance(x,y,Player.x,Player.y)<325) {
	// Sapwn enemies
	repeat(quantity) {
		var inst = instance_create_layer(x,y,"entities",enemy);
		inst.mob = id;
		ds_list_add(enemies,inst);
		last_spawn = Time.now;
	}
	if (creator != noone) {
		ds_list_destroy(creator.targets);
		creator.targets = enemies;
	}
}