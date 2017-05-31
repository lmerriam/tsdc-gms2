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
	show_debug_message(goto);
	scr_menu_dialog(GUI.dialog_portrait,global.all_dialog[? goto]);
}