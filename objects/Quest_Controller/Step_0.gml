/// @description Insert description here


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
	var current_phase_complete = current_phase[? "complete"];

	// Progress the quest phase if completed
	if (current_phase_complete) {
		var next_phase_number = current_phase_number + 1;
		var quest_complete = next_phase_number >= ds_list_size(phases) ? true : false;
		
		// Check if the quest is complete
		if (quest_complete) {
			scr_complete_quest(key,true);
			
		} else {
			// Move to the next phase if not
			var next_phase = phases[| next_phase_number];
			var next_phase_obj = next_phase[? "inst"];
			var next_phase_room = next_phase[? "room"];
			quest[? "current phase"] = next_phase_number;
			
			var next_phase_in_room = (room_get_name(room) == next_phase_room) ? true : false;
			if (next_phase_in_room) with (next_phase_obj) event_user(0);
		}
	}
	
	key = ds_map_find_next(active_quests,key);
}