/// @description Create quest data structures

global.active_quests = ds_map_create();
active_quests = global.active_quests;

global.completed_quests = ds_map_create();
completed_quests = global.completed_quests;

//global.quest_library = scr_load_json("quests");
//quest_library = global.quest_library;

global.room_quests = ds_map_create();
room_quests = global.room_quests;

global.current_quest = noone;