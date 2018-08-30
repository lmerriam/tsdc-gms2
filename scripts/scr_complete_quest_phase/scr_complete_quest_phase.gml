/// @param quest
/// @param phase_number

var quest = argument0;
var phase_number = argument1;

//show_debug_message("Completing quest:");
//show_debug_message(quest);
//show_debug_message(phase_number);

var phase = ds_list_find_value(quest[? "phases"], phase_number);
phase[? "complete"] = true;

var phase_layer = phase[? "layer"];
if (phase_layer != undefined) {
	var lyr_id = layer_get_id(phase_layer);
	layer_set_visible(lyr_id,true);
}