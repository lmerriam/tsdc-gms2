var observer_args = argument0;
var event_args = argument1;

// Check if the picked-up object is the correct one and trigger the quest phase completion if so
var quest_mob = observer_args[? "mob"];
var quest_id = observer_args[? "quest id"];
var phase_number = observer_args[? "phase number"];
var event_mob = event_args;

if (quest_mob = event_mob) {
	scr_complete_quest_phase(scr_get_quest(quest_id),phase_number);
}