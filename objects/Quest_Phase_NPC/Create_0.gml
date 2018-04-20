// Inherit the parent event
event_inherited();

dialog = ds_map_create();
dialog[? "text"] = ds_list_create();

dialog[? "dialog actions"] = ds_map_create();
dialog_actions = dialog[? "dialog actions"];

dialog_actions[? "complete quest phase"] = quest_id;
dialog_actions[? "complete quest phase number"] = phase_number;