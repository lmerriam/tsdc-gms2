/// @description Initiate a quest
/// @param Name
/// @param Title
/// @param target

var name = argument0;
var title = argument1;
var target = argument2;

var quest = ds_map_create();

quest[? "Title"] = title;
quest[? "Target"] = target;
global.active_quests[? "Name"] = name;

return quest;