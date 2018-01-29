/// @param name
/// @param title
/// @param gold
/// @param xp
var name = argument0;
var title = argument1;
var gold = argument2;
var xp = argument3;

// Create quest
var quest = ds_map_create();
global.room_quests[? "test quest"] = quest;

// Set up phases
var phases = ds_list_create();
quest[? "phases"] = phases;
quest[? "current phase"] = 0;

// Rewards
quest[? "gold"] = gold;
quest[? "xp"] = xp;