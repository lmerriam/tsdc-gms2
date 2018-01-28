/// @param name
/// @param title
var name = argument0;
var title = argument1;

// Create quest
var quest = ds_map_create();
global.room_quests[? "test quest"] = quest;

// Set up phases
var phases = ds_list_create();
quest[? "phases"] = phases;
quest[? "current phase"] = 0;