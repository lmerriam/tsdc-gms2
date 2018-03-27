//if (global.current_quest != noone) {
//	var target = global.current_quest[? "Target"];
//	//show_debug_message(global.current_quest[? "Target"]);
//	if (target != noone and instance_exists(target)) {
//		scr_draw_quest_pointer(target.x,target.y);
//	}
//}

if (global.current_quest != noone) {
	var quest = global.current_quest;
	var phases = quest[? "phases"];
	
	var current_phase_number = quest[? "current phase"];
	var current_phase = phases[| current_phase_number];
	var current_phase_obj = ds_map_find_value(current_phase, "inst");
	var current_phase_room = current_phase[? "room"];
	var current_phase_complete = current_phase[? "completed"]
	
	var final_phase_number = ds_list_size(phases)-1;
	var final_phase = phases[| final_phase_number];
	var final_phase_obj = final_phase[? "inst"];
	var final_phase_complete = final_phase[? "completed"];
	
	if (current_phase_room == room_get_name(room)) {
		var targets = current_phase_obj.targets;
		var icon = current_phase_obj.quest_icon;
		for (var i = 0; i<ds_list_size(targets); i++) {
			var target = targets[| i];
			scr_draw_quest_pointer(target.x,target.y,icon);
		}
	}
}