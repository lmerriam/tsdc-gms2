
//if (global.current_quest != noone) {
//	var quest = global.current_quest;
//	var phases = quest[? "phases"];
	
//	var current_phase_number = quest[? "current phase"];
//	var current_phase = phases[| current_phase_number];
//	var current_phase_obj = ds_map_find_value(current_phase, "inst");
//	var current_phase_room = current_phase[? "room"];
//	var current_phase_complete = current_phase[? "completed"]
	
//	var final_phase_number = ds_list_size(phases)-1;
//	var final_phase = phases[| final_phase_number];
//	var final_phase_obj = final_phase[? "inst"];
//	var final_phase_complete = final_phase[? "completed"];
	
//	// Draw a quest pointer to the next phase
//	if (current_phase_room == room_get_name(room)) {
//		var targets = current_phase_obj.targets;
//		var icon = current_phase_obj.quest_icon;
//		if (ds_exists(targets,ds_type_list)) {
//			for (var i = 0; i<ds_list_size(targets); i++) {
//				var target = targets[| i];
//				scr_draw_location_pointer(target.x,target.y,spr_location_pointer);
//			}
//		}
//	// Draw a pointer to the entrance of the room the next phase is in
//	} else if (global.entrances[? current_phase_room] != undefined) {
//		var entrance = scr_get_entrance(current_phase_room);
//		scr_draw_location_pointer(entrance.x,entrance.y,spr_location_pointer);
//	}
//}