/// @description Insert description here
ds_list_clear(dialog[? "text"]);

if (scr_quest_is_complete(quest_name)) {
	for(var i = 0; i<array_length_1d(dialog_pre_quest); i++ ) {
		var line = dialog_pre_quest[i];
		ds_list_add(dialog[? "text"],line);
	}
} else {
	for(var i = 0; i<array_length_1d(dialog_post_quest); i++ ) {
		var line = dialog_post_quest[i];
		ds_list_add(dialog[? "text"],line);
	}
	ds_map_destroy(dialog[? "confirm actions"]);
	ds_map_delete(dialog,"confirm actions");
}

scr_menu_dialog(sprite_index,dialog);