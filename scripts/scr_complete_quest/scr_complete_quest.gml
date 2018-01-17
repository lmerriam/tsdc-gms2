/// @description Complete a quest
/// @param name
/// @param announce
var name = argument0;
var announce = argument1;

var quest = global.active_quests[? name];
ds_map_delete(global.active_quests,name);
ds_map_add(global.completed_quests,name,quest);

if (announce) scr_announce("Quest complete: " + quest[? "Title"], noone);

return quest;