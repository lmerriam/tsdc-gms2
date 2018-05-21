/// @description Insert description here
dialog_actions[? "complete quest phase"] = quest_id;
dialog_actions[? "complete quest phase number"] = phase_number;

ds_list_clear(dialog[? "text"]);

var text;

if (scr_quest_is_complete(quest_id)) {
	text = dialog_pre_quest;
} else {
	text = dialog_post_quest;
}

for(var i = 0; i<array_length_1d(text); i++ ) {
	var line = text[i];
	ds_list_add(dialog[? "text"],line);
}

scr_menu_dialog(sprite_index,dialog);