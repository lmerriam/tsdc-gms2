/// @param dialog
/// @param key
/// @param value

var dialog = argument0;
var actions = dialog[? "dialog actions"];
var key = argument1;
var value = argument2;

actions[? key] = value;