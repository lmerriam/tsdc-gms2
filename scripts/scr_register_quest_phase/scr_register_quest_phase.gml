// @param quest_id
// @param phase_number
// @param inst

var quest_id = argument0;
var phase_number = argument1;
var inst = argument2;

var quest = scr_get_quest(quest_id);
show_debug_message("Register quest ID: " + string(quest_id));
show_debug_message("Register quest DS: " + string(quest));


// MULTI-INSTANCE PHASE CODE
// Create current phase map
//var this_phase = ds_map_create();
//this_phase[? "room"] = room_get_name(room);
//this_phase[? "inst"] = inst;

//var quest_phases = quest[? "phases"];
//var current_phase_list = quest_phases[| this_phase_number];
//// Create the phase list if it hasn't already been instantiated
//if ( current_phase_list == undefined) {
//	quest_phases[| this_phase_number] = ds_list_create();
//}
//// Register this instance to the phase
//ds_list_add(quest_phases[| this_phase_number],this_phase);


//// Get quest phases
//// @TODO: seriously, wtf is this:
var phases = quest[? "phases"];
var phase;
if (phases[| phase_number] == undefined) {
	phase = ds_map_create();
	phases[| phase_number] = phase;
} else {
	phase = phases[| phase_number];
}
phase[? "room"] = room_get_name(room);
phase[? "inst"] = inst;

inst.completed = false;
targets = ds_list_create();
ds_list_add(targets,inst);