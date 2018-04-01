/// @description Complete a quest
/// @param quest_id
/// @param announce
var quest_id = argument0;
var announce = argument1;

var quest = global.active_quests[? quest_id];
var title = quest[? "title"];
var type = quest[? "type"];

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
giver.location_icon = spr_location_quest_complete;

// If room quest, switch back to story quests
var next_quest = quest[? "next quest"];
if (next_quest != undefined) {
	global.current_quest = scr_get_quest(next_quest,"story");
	scr_activate_quest(next_quest,true,true,"story");
} else {
	global.current_quest = noone;
}

return quest;