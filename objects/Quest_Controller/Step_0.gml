/// @description Insert description here
// You can write your code in this editor

//move any completed phases to next phase
//check completion of all active quests
//check completion of current story quest

var key = ds_map_find_first(active_quests);
var num_quests = ds_map_size(active_quests);
for (var i = 0; i<num_quests; i++) {
	var quest = active_quests[? key];
	var giver = quest[? "giver"];
	var phases = quest[? "phases"];
	var current_phase_number = quest[? "current phase"];
	var current_phase = phases[| current_phase_number];
	var current_phase_obj = current_phase[? "inst"];

	// Progress the quest phase if completed
	if (current_phase_obj.completed) {
		var next_phase_number = current_phase_number + 1;
		
		// Check if the quest is complete
		if (next_phase_number >= ds_list_size(phases)) {
			scr_complete_quest(key,true);
			
		} else {
			// Move to the next phase if not
			var next_phase = phases[| next_phase_number];
			var next_phase_obj = next_phase[? "inst"];
			quest[? "current phase"] = next_phase_number;
			with (next_phase_obj) event_user(0);
		}
	}
	
	key = ds_map_find_next(active_quests,key);
}

// Check for current story quest completion
//if (current_story_quest != noone) {
//	var current_phase = current_story_quest[? "current_phase"];
//	var phases = current_story_quest[? "phases"];
//	var phase_count = ds_list_size(phases);
//	var next_phase = current_phase + 1;
		
//	// Check if the quest is complete
//	if (next_phase >= phase_count) {
//		scr_complete_quest(key,true);
			
//	} else {
//		// Move to the next phase if not
//		var next_phase_obj = phases[| next_phase];
//		quest[? "current phase"] = next_phase;
//		with (next_phase_obj) event_user(0);
//	}
//}