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
	var current_phase = quest[? "current phase"];
	var current_phase_obj = phases[| current_phase];
	var final_phase = phases[| ds_list_size(phases)-1];
	var targets = current_phase_obj.targets;
	
	// TODO: switch to next current_quest instead of just cancelling the pointer when quest complete
	if (!final_phase.completed) {
		for (var i = 0; i<ds_list_size(targets); i++) {
			var target = targets[| i];
			scr_draw_quest_pointer(target.x,target.y);
		}
	}
}