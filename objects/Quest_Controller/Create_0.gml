/// @description Create quest data structures

global.active_quests = ds_map_create();
active_quests = global.active_quests;

// Init the quest
global.completed_quests = ds_map_create();
completed_quests = global.completed_quests;

// Set up quest library
global.quest_library = scr_load_json("story_quests");
global.story_quest_library = ds_map_create();
ds_map_copy(global.story_quest_library,global.quest_library);

// Current story quest
global.current_story_quest = "talk to leader";

// Set the current quest
scr_activate_quest(global.current_story_quest,true,false);

global.quest_givers = ds_list_create();

scr_init_quest("test destroy","tester destroyer",noone,10,10);