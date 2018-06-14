/// @param quest_id
var quest_id = argument0;

if (ds_map_find_value(global.completed_quests,quest_id) == undefined) {
	return false;
} else {
	show_debug_message(ds_map_find_value(global.completed_quests,quest_id));
	return true;
}