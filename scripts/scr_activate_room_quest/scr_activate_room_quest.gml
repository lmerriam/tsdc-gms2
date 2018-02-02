/// @description Add a room quest to the active quests
/// @param name

var name = argument0;
var quest = global.room_quests[? name];

// Add to active quests
global.active_quests[? name] = quest;
global.current_quest = quest;

// Init the first phase
var phases = quest[? "phases"];
var first_phase = phases[| 0];
with (first_phase) event_user(0);

return quest;