/// scr_activate_quest(quest,current,announce)
/// @param name
/// @param current
/// @param announce
/// @param type

var quest_id = argument0;
var current = argument1;
var announce = argument2;
var type = argument3;
var quest = scr_get_quest(quest_id,type);
var target = quest[? "target"];
var title = quest[? "title"];

// Add to active quests
global.active_quests[? quest_id] = quest;
quest[? "current phase"] = 0;

// Init the first phase
var phases = quest[? "phases"];
var first_phase = ds_map_find_value(phases[| 0],"inst");
with (first_phase) event_user(0);

// Set giver sprite
var giver = quest[? "giver"];
if (giver != noone) {
	giver.location_icon = spr_location_quest_active;
	giver.discovered = true;
}

// Announce
if (announce) scr_announce("New quest: " + string(title));

// Current
if (current) global.current_quest = quest;

return quest;