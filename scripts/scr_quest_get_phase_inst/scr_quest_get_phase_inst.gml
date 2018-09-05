/// @param quest_id
/// @param phase_number

var quest_id = argument0;
var phase_number = argument1;

var phase = scr_get_quest_phase(quest_id, phase_number);

return phase[? "inst"];