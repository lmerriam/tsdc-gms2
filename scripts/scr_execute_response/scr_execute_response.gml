/// scr_execute_response
/// @description Take a dialog response and execute the associated actions
/// @param response

var response = argument0;

// Check actions
if (response[? "action"] != undefined) {

}

// Check script
if (response[? "script"] != undefined) {
	script_execute(asset_get_index(response[? "script"]));
}

// Check goto
if (response[? "goto"] != undefined) {
	var goto = response[? "goto"];
	scr_menu_dialog(GUI.dialog_portrait,global.all_dialog[? goto]);
}

// Check quests
if (response[? "activate quest"] != undefined) {
	var quest_name = response[? "activate quest"];
	var quest = global.all_quests[? quest_name];
	scr_activate_quest(quest);
}
if (response[? "complete quest"] != undefined) {
	var quest_name = response[? "complete quest"];
	var quest = global.all_quests[? quest_name];
	scr_complete_quest(quest);
}

// Check gold
if (response[? "gold"] != undefined) {
	Player.properties[? "Gold"] += response[? "gold"];
}

// Check XP
if (response[? "xp"] != undefined) {
	scr_give_xp(response[? "xp"]);
}