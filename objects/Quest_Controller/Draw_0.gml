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
	var target = phases[| current_phase];
	var final_phase = phases[| ds_list_size(phases)-1];
	
	// TODO: switch to next current_quest instead of just cancelling the pointer
	if (!final_phase.completed) scr_draw_quest_pointer(target.x,target.y);
}