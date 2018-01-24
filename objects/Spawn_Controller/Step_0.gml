/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i<ds_list_size(spawner_list); i++) {
	var spawn = spawner_list[| i];
	if (point_distance(spawn.x,spawn.y,Player.x,Player.y)<256 and scr_alarm_passed(spawn.next_spawn)) {
		repeat(spawn.quantity) instance_create_layer(spawn.x,spawn.y,"entities",spawn.spawn_object);
		spawn.last_spawn = Time.now;
		spawn.next_spawn = scr_sec_from_now(180);
	}
}