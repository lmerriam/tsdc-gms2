// OLD code with confirm
//dialog = ds_map_create();
//dialog[? "text"] = ds_list_create();
//dialog[? "confirm text"] = confirm_text;
//confirm_actions = ds_map_create();
//dialog[? "confirm actions"] = confirm_actions;

//confirm_actions[? "activate quest"] = quest_id;
scr_register_quest_giver(id);
event_inherited();

// Create quest dialog
dialog_quest = scr_dialog_init();
scr_dialog_split_string(dialog_quest,dialog_quest_text);
scr_dialog_add_action(dialog_quest, "activate quest", quest_id);