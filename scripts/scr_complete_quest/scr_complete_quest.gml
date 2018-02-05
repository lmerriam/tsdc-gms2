/// @description Complete a quest
/// @param name
/// @param announce
var name = argument0;
var announce = argument1;

var quest = global.active_quests[? name];
ds_map_delete(global.active_quests,name);
ds_map_add(global.completed_quests,name,quest);

// Give rewards
var gold = quest[? "gold"];
var xp = quest[? "xp"];
scr_give_xp(xp);
Player.properties[? "Gold"] += gold;
show_debug_message("Gold: " + string(gold));
// Announce quest complete
if (announce) scr_announce("Completed " + name + "!");
//show_debug_message("Completed " + name + "!");

// Set giver quest complete
var giver = quest[? "giver"];
giver.location_sprite = spr_location_quest_complete;

return quest;