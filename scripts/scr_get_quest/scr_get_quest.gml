/// scr_get_quest
/// @param quest_id

var quest_id = argument0;

var quest = global.quest_library[? quest_id];

//var quest;

//if (scr_is_story_quest(quest_id)) {
//	quest = global.story_quest_library[? quest_id];
//} else {
//	quest = global.active_quests[? quest_id];
//}

//if (quest == undefined) {
//	show_debug_message("Quest not found: " + quest_id);
//}

return quest;
