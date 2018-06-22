/// @description Insert description here
var dialog = dialog_standard;

// If a quest exists and is not complete, use its dialog
if (variable_instance_exists(id,"quest_id") and !scr_quest_is_complete(quest_id)) {
	dialog = dialog_quest;
}

scr_menu_dialog(sprite_index,dialog);