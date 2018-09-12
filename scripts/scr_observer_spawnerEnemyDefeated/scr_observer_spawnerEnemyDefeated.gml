var observer_args = argument0;
var event_args = argument1;

var enemy_id = event_args[? "id"];

var observer_enemy_id = observer_args[? "enemy_id"];
var observer_id = observer_args[? "id"];

if (observer_enemy_id == enemy_id) {
	var enemy_list = observer_id.enemies;
	var pos = ds_list_find_index(enemy_list,enemy_id);
	ds_list_delete(enemy_list,pos);
}