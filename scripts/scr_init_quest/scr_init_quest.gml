/// @description Initiate a quest
/// @param name
/// @param title
/// @param target
/// @param announce

var name = argument0;
var title = argument1;
var target = argument2;

var quest = ds_map_create();

quest[? "Title"] = title;
quest[? "Target"] = target;
global.active_quests[? "Name"] = name;

if (announce) scr_announce("Quest complete: " + title, noone);

return quest;