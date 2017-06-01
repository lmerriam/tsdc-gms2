/// scr_activate_quest(quest)
var quest = argument0;

quest[? "Active"] = false;
ds_list_add(global.completed_quests,quest);

scr_announce("Quest complete: " + quest[? "Name"], noone);