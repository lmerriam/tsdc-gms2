/// Init quests

global.active_quests = ds_list_create();
global.completed_quests = ds_list_create();

global.all_quests = ds_map_create();
var quest_intro = ds_map_create();
quest_intro[? "Name"] = "Intro";
quest_intro[? "Active"] = false;
quest_intro[? "Current Step"] = 0;

global.all_quests[? "Intro"] = quest_intro;