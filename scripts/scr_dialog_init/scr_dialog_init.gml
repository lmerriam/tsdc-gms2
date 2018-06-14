/// @description Init a dialog DS

var dialog = ds_map_create();
dialog[? "text"] = ds_list_create();
var actions = ds_map_create();
dialog[? "dialog actions"] = actions;

return dialog;