var quest_id = argument0;

if (global.story_quest_library[? quest_id] == undefined) {
	return false;
} else {
	return true;
}