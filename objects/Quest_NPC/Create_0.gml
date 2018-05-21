event_inherited();
scr_register_interactable(id);

dialog = ds_map_create();
dialog[? "text"] = ds_list_create();
dialog_actions = ds_map_create();
dialog[? "dialog actions"] = dialog_actions;