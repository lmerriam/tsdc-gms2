/// @param inv_type

var inv_type = argument0;

for (var i=0;ds_list_size(GUI.inventory_props);i++) {
	var props = GUI.inventory_props[| i];
	var type = props[? "type"];
	if (type == inv_type) return GUI.inventory_props[| i];
}

return noone;