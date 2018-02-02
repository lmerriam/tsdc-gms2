/// @description Insert description here
// You can write your code in this editor
event_inherited();
scr_register_interactable(id);

completed = false;

dialog = ds_map_create();
dialog[? "text"] = "Would you like to help me with a quest?";
var responses = ds_list_create();
dialog[? "responses"] = responses;

var response_yes = ds_map_create();
response_yes[? "text"] = "I'll do it";
response_yes[? "script"] = "scr_menu_hud";
response_yes[? "activate room quest"] = "test quest";

var response_no = ds_map_create();
response_no[? "text"] = "No thanks";
response_no[? "script"] = "scr_menu_hud";

ds_list_add(responses,response_yes,response_no);