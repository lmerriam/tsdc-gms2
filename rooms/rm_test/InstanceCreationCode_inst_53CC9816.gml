var quest = ds_map_create();
global.active_quests[? "test quest"] = quest;

var phases = ds_list_create();
quest[? "phases"] = phases;
quest[? "current phase"] = 0;
phases[| 0] = id;