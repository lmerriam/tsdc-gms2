/// scr_activate_quest(quest,current,announce)
/// @param name
/// @param current
/// @param announce

var quest_id = argument0;
var current = argument1;
var announce = argument2;

var quest = scr_get_quest(quest_id);
var title = quest[? "title"];

// Don't reactivate if completed
if (global.completed_quests[? quest_id] == undefined) {

	// Add to active quests
	global.active_quests[? quest_id] = quest;
	quest[? "current phase"] = 0;

	// Init the first phase
	var phases = quest[? "phases"];
	var first_phase = ds_map_find_value(phases[| 0],"inst");
	if first_phase {
		with (first_phase) event_user(0);

		// Set giver sprite
		var giver = quest[? "giver"];
		if (giver != noone) {
			giver.location_icon = spr_location_quest_active;
			giver.discovered = true;
		}

		// Announce
		if (announce) scr_announce_simple("New quest: " + string(title));

		// Current
		if (current) scr_set_current_quest(quest_id);
		if (scr_is_story_quest(quest_id)) global.current_story_quest = quest;
	}

} else {
	show_debug_message("Tried to activate quest " + string(quest_id) + ", but it was already completed");
}

return quest;