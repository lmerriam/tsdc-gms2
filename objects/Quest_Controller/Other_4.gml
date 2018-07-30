/// @description activate quest phases

//var active_quests = global.active_quests;
//show_debug_message("Debugging active_quests");
//scr_debug_map(active_quests);
//scr_debug_map(global.active_quests);

var size = ds_map_size(active_quests);
var key = ds_map_find_first(active_quests);
for (var i = 0; i<size; i++) {
	
	var quest = active_quests[? key];
	var current_phase_number = quest[? "current phase"];
	var phases = quest[? "phases"];
	var phase = phases[| current_phase_number];
	var current_phase_room = phase[? "room"];
	var current_phase_inst = phase[? "inst"];
	
	if (current_phase_room == room_get_name(room)) {
		with(current_phase_inst) event_user(0);
	}
	
	key = ds_map_find_next(active_quests,key);
}