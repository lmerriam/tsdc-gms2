/// @description Complete a quest
/// @param quest_id
/// @param announce
var quest_id = argument0;
var announce = argument1;

var quest = global.active_quests[? quest_id];
var title = quest[? "title"];

//show_debug_message("Quest: " + string(quest));
//show_debug_message("Next quest: " + string(quest[? "next quest"]));

ds_map_delete(global.active_quests,quest_id);
ds_map_add(global.completed_quests,quest_id,quest);

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
if (giver != undefined or giver != noone) giver.location_icon = spr_location_quest_complete;

// If room quest, switch back to story quests

if (scr_is_story_quest(quest_id)) {
	var next_quest = quest[? "next quest"];
	global.current_quest = scr_get_quest(next_quest);
	scr_activate_quest(next_quest,true,true);
//} else if (ds_map_size(global.active_quests) == 0) {
//	global.current_quest = noone;
} else {
	global.current_quest = global.current_story_quest;
}

return quest;