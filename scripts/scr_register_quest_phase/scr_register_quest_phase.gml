/// @param quest_name
/// @param phase_number
/// @param id

var quest_name = argument0;
var phase_number = argument1;
var inst = argument2;

var quest = global.room_quests[? quest_name];
var phases = quest[? "phases"];

phases[| phase_number] = inst;

inst.completed = false;