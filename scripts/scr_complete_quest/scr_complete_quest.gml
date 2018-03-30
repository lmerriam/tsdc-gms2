/// @description Complete a quest
/// @param quest_id
/// @param announce
var quest_id = argument0;
var announce = argument1;

var quest = global.active_quests[? quest_id];
ds_map_delete(global.active_quests,quest_id);
ds_map_add(global.completed_quests,quest_id,quest);

var title = quest[? "title"];

// Give rewards
var gold = quest[? "gold"];
var xp = quest[? "xp"];
scr_give_xp(xp);
Player.properties[? "Gold"] += gold;
show_debug_message("Gold: " + string(gold));

// Announce quest complete
if (announce) scr_announce("Completed " + title + "!");

// Set giver quest complete
var giver = quest[? "giver"];
giver.location_icon = spr_location_quest_complete;

// If room quest, switch back to story quests
if (quest[? "type"] == "room") {
	global.current_quest = global.current_story_quest;

// If story quest, move to next story quest
} else if (quest[? "type"] == "story") {
	var next_story_quest = ds_list_find_index(story_quest_index, global.current_story_quest)+1;
	global.current_quest = next_story_quest;
}

return quest;