/// scr_get_quest
/// @param quest_id

var quest_id = argument0;

var quest = global.quest_library[? quest_id];

if (quest == undefined) {
	return noone;
}

return quest;