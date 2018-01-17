/// @description Create quest data structures

global.active_quests = ds_map_create();
active_quests = global.active_quests;

global.completed_quests = ds_map_create();
completed_quests = global.completed_quests;

global.quest_library = scr_load_json("quests");
quest_library = global.quest_library;

global.current_quest = noone;

//current_quest = scr_init_quest("Intro","Welcome to Vaultworld",Chest);