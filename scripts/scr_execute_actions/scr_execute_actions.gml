/// scr_execute_actions
/// @description Take a dialog actions and execute the associated actions
/// @param actions

var actions = argument0;

// Check actions
if (actions[? "action"] != undefined) {

}

// Check script
if (actions[? "script"] != undefined) {
	script_execute(asset_get_index(actions[? "script"]));
}

// Check goto
//if (actions[? "goto"] != undefined) {
//	var goto = actions[? "goto"];
//	scr_menu_dialog(GUI.dialog_portrait,global.all_dialog[? goto],noone);
//}

// Check quests
if (actions[? "activate event"] != undefined) {
	var quest_id = actions[? "activate quest"];
	//var quest = global.all_quests[? quest_id];
	//scr_activate_quest(quest_id,true,true);
	instance_create_layer(x,y,"entities",Event_Test_Quest);
}
if (actions[? "complete event"] != undefined) {
	var quest_id = actions[? "complete quest"];
	var quest = global.all_quests[? quest_id];
	scr_complete_quest(quest_id,true);
}

// Check gold
if (actions[? "gold"] != undefined) {
	Player.properties[? "Gold"] += actions[? "gold"];
}

// Check XP
if (actions[? "xp"] != undefined) {
	scr_give_xp(actions[? "xp"]);
}

if (actions[? "activate quest"] != undefined) {
	var quest_id = actions[? "activate quest"];
	var quest_type = actions[? "quest type"];
	scr_activate_quest(quest_id,true,true,quest_type);
}

// Check if room quest activated
if (actions[? "activate room quest"] != undefined) {
	var quest_id = actions[? "activate room quest"];
	scr_activate_room_quest(quest_id);
}

// Check completed quest phase
if (actions[? "complete quest phase"] != undefined) {
	var quest_id = actions[? "complete quest phase"];
	var phase_number = actions[? "complete quest phase number"];
	var quest = scr_get_quest(quest_id,"room");
	scr_complete_quest_phase(quest,phase_number);
}

// Check denied quest
if (actions[? "deny quest"] != undefined) {
	// Maybe not needed
}