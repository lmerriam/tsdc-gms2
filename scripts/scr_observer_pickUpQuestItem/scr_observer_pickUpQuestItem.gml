var observer_args = argument0;
var event_args = argument1;

// Check if the picked-up object is the correct one and trigger the quest phase completion if so
var item_name = observer_args[? "item name"];
var quest = observer_args[? "quest id"];
var phase = observer_args[? "phase number"];
var item_props = event_args;

if (item_props[? "Type"] == "Quest" and item_name == item_props[? "Name"]) {
	scr_complete_quest_phase(scr_get_quest(quest),phase);
}