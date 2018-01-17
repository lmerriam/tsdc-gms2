/// scr_activate_quest(quest,current,announce)
/// @param name
/// @param current
/// @param announce

var name = argument0;
var current = argument1;
var announce = argument2;
var quest = global.quest_library[? name];
var target = quest[? "Target"];
var title = quest[? "Title"];

// Add to active quests
global.active_quests[? name] = quest;

// Set the target (if target is still a string from JSON, convert it to an asset index)
if (target != "noone" and is_string(target)) quest[? "Target"] = asset_get_index(target);

// Make it current
if (current) scr_set_current_quest(name);

// Announce the new quest
if (announce) scr_announce("Quest: " + title, noone);