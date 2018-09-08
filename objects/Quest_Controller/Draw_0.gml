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
	
	// Draw a quest pointer to the next phase
	if (current_phase_room == room_get_name(room) and current_phase_obj != undefined) {
		var targets = current_phase_obj.targets;
		var icon = current_phase_obj.quest_icon;
		if (ds_exists(targets,ds_type_list)) {
			for (var i = 0; i<ds_list_size(targets); i++) {
				var target = targets[| i];
				if instance_exists(target) scr_draw_quest_pointer(target.x,target.y,icon);
			}
		}
	// Draw a pointer to the entrance of the room the next phase is in
	} else if (global.entrances[? current_phase_room] != undefined) {
		var entrance = scr_get_entrance(current_phase_room);
		scr_draw_quest_pointer(entrance.x,entrance.y,noone);
	}
}

// Show quest giver markers
var nearby_givers = global.active_chunk_registry[? "quest giver"];
if (nearby_givers != undefined) {
	for (var i = 0; i<ds_list_size(nearby_givers); i++) {
		var giver = nearby_givers[| i];
		if (scr_quest_is_active(giver.quest_id) and scr_point_in_view(giver.x,giver.y)) {
			draw_sprite(spr_location_quest_active,0,giver.x,giver.y-32);
		} else if (!scr_quest_is_complete(giver.quest_id) and scr_point_in_view(giver.x,giver.y)) {
			draw_sprite(spr_alert,Time.now mod 80 div 10,giver.x,giver.y-32);
		}
	}
}