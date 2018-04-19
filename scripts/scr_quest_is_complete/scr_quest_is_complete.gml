/// @param quest_id
var quest_id = argument0;

if (ds_map_find_value(global.completed_quests,quest_id) == undefined) {
	return true;
} else {
	return false;
}