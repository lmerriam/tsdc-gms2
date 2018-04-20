/// scr_get_quest
/// @param quest_id
/// @param type
var quest_id = argument0;
var type = argument1;
var quest = ds_map_find_value(global.quest_library[? type],quest_id);

if (quest == undefined) {
	show_debug_message("Quest not found: " + quest_id);
} else {
	return quest;
}