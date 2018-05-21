/// @param name
/// @param title
/// @param giver
/// @param gold
/// @param xp
var name = argument0;
var title = argument1;
var giver = argument2;
var gold = argument3;
var xp = argument4;

// Create quest
var quest = ds_map_create();
global.room_quests[? "test quest"] = quest;

// Register the giver
quest[? "giver"] = giver;

// Set up phases
var phases = ds_list_create();
quest[? "phases"] = phases;
quest[? "current phase"] = 0;

// Rewards
quest[? "gold"] = gold;
quest[? "xp"] = xp;