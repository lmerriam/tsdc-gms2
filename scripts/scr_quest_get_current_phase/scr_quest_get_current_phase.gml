/// @param quest_id
var quest = argument0;

//var quest = scr_get_quest(quest_id);
var phases = quest[? "phases"];
var phase_num = quest[? "current phase"];
var current_phase = phases[| phase_num];

return current_phase;