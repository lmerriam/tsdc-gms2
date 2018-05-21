/// @description Create quest data structures

global.active_quests = ds_map_create();
active_quests = global.active_quests;

// Init the quest
global.completed_quests = ds_map_create();
completed_quests = global.completed_quests;

// Init the room quests
//global.room_quests = ds_map_create();
//room_quests = global.room_quests;

// Init the story quests
// global.story_quests = ds_map_create();
//global.story_quests = scr_load_json("story_quests");
//story_quests = global.story_quests;

// Set up quest library
global.quest_library = scr_load_json("story_quests");
//ds_map_add_map(global.quest_library,"story",story_quests);
//ds_map_add_map(global.quest_library,"room",room_quests);

// Current story quest
global.current_story_quest = "intro";

// Set the current quest
global.current_quest = noone;

global.story_quest_index = ds_list_create();
ds_list_add(global.story_quest_index,
	"tutorial 1",
	"tutorial 2",
	"tutorial 3"
);