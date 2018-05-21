/// @param name
/// @param title
/// @param giver
/// @param gold
/// @param xp
var quest_id = argument0;
var title = argument1;
var giver = argument2;
var gold = argument3;
var xp = argument4;

// Create quest
var quest = ds_map_create();
global.quest_library[? quest_id] = quest;
quest[? "title"] = title;

// Register the giver
quest[? "giver"] = giver;

// Set up phases
var phases = ds_list_create();
quest[? "phases"] = phases;
quest[? "current phase"] = 0;

// Rewards
quest[? "gold"] = gold;
quest[? "xp"] = xp;