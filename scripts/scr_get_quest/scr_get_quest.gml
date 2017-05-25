/// scr_get_quest(name)
var name = argument0;

for(var i = 0; i < ds_list_size(global.active_quests); i++) {
	var quest = global.active_quests[| i];
	if (quest[? "Name"] == name) {
		return quest;
	}
}

show_debug_message("Quest not found");
return noone;