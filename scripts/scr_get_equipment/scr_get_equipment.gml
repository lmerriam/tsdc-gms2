/// @param item_name
var item_name = argument0;

var equipment = global.equipment_library[? item_name];

//var size = ds_list_size(GUI.inventory_props);
//for (var i=0;i<size;i++) {
//	var props = GUI.inventory_props[| i];
//	var type = props[? "type"];
//	var inv = global.equipment[? type];
//	var item = inv[? item_name];
//	if (item) equipment = item;
//}

return equipment;