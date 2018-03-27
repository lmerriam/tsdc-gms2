/// @param quest_id
/// @param phase_number

var quest = argument0;
var phase_number = argument1;

var phase = ds_list_find_value(quest[? "phases"],phase_number);

if (phase == undefined) {
	show_debug_message("Couldn't find that quest or phase");
} else {
	return phase;
}