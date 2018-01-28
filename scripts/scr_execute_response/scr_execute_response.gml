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
if (response[? "activate event"] != undefined) {
	var quest_name = response[? "activate quest"];
	//var quest = global.all_quests[? quest_name];
	//scr_activate_quest(quest_name,true,true);
	instance_create_layer(x,y,"entities",Event_Test_Quest);
}
if (response[? "complete event"] != undefined) {
	var quest_name = response[? "complete quest"];
	var quest = global.all_quests[? quest_name];
	scr_complete_quest(quest_name);
}

// Check gold
if (response[? "gold"] != undefined) {
	Player.properties[? "Gold"] += response[? "gold"];
}

// Check XP
if (response[? "xp"] != undefined) {
	scr_give_xp(response[? "xp"]);
}

// Check if room quest activated
if (response[? "activate room quest"] != undefined) {
	var name = response[? "activate room quest"];
	scr_activate_room_quest(name);
}

// Check completed quest phase
if (response[? "complete quest phase"] != undefined) {
	var event = response[? "accept quest"];
	event.completed = true;
}

// Check denied quest
if (response[? "deny quest"] != undefined) {
	// Maybe not needed
}