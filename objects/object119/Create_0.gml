// Inherit the parent event
event_inherited();

actions = ds_list_create();
current_action = 0;

actions[| 0] = ds_map_create();
var action0 = actions[| 0];
action0[? "walk to"] = Door;