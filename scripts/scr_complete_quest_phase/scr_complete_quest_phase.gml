/// @param quest
/// @param phase_number

var quest = argument0;
var phase_number = argument1;

var phase = ds_list_find_value(quest[? "phases"], phase_number);
phase[? "complete"] = true;