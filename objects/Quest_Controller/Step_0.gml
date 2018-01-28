/// @description Insert description here
// You can write your code in this editor

var key = ds_map_find_first(global.active_quests);
for (var i = 0; i<ds_map_size(global.active_quests); i++) {
	var quest = global.active_quests[? key];
	var phases = quest[? "phases"];
	var current_phase = quest[? "current phase"];
	var current_phase_obj = phases[| current_phase];
	
	// Progress the quest phase if completed
	if (current_phase_obj.completed) {
		var next_phase = current_phase + 1;
		
		// Check if the quest is complete
		if (next_phase >= ds_list_size(phases)) {
			scr_complete_quest(key);
		} else {
			// Move to the next phase if not
			var next_phase_obj = phases[| next_phase];
			quest[? "current phase"] = next_phase;
			with (next_phase_obj) event_user(0);
		}
	}
	
	key = ds_map_find_next(global.active_quests,key);
}