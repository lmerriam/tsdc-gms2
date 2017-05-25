/// scr_activate_quest(quest)
var quest = argument0;

quest[? "Active"] = true;
ds_list_add(global.active_quests,quest);

scr_announce("Quest: " + quest[? "Name"], noone);