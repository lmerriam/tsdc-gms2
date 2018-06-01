// @param quest_id
// @param phase_number
// @param inst

var quest_id = argument0;
var phase_number = argument1;
var inst = argument2;

var quest = scr_get_quest(quest_id);
show_debug_message("Quest ID: " + string(quest));
show_debug_message("Quest: " + string(quest));
//scr_debug_map(quest);

// Phases
// @TODO: seriously, wtf is this:
var phases = quest[? "phases"];
var phase;
if ( phases[| phase_number] == undefined) {
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