/// @param item_name

var item_name = argument0;

var size = ds_list_size(GUI.inventory_props);
for (var i=0;i<size;i++) {
	var props = GUI.inventory_props[| i];
	var type = props[? "type"];
	var inv = global.inventory[? type];
	for (var j=0;j<ds_list_size(inv);j++) {
		var item = inv[| j];
		var name = item[? "Name"];
		if (name == item_name) return item;
	}
}

return noone;