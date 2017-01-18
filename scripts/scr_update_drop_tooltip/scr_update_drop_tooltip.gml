///scr_update_drop_tooltip(properties_id)
var props = argument0;
var stats = props[? "Stats"]
var buffs = props[? "Buffs"]

var name = props[? "Name"];
var type = props[? "Type"];
var level = stats[? "Level"];
var _text = props[? "Text"];

// Identify the equipped item to compare to
var equipped_item;
var equipped_item_stat;
switch(type) {
	case "Weapon":
		equipped_item = scr_get_weapon();
		break;
	case "Scroll":
		equipped_item = scr_get_spell();
		break;
	case "Gem":
		equipped_item = scr_get_gem();
		break;
	case "Armor":
		equipped_item = scr_get_armor();
		break;
	default:
		show_message("Can't identify item type for inv tooltip");
}
if (equipped_item != noone) {
	var equipped_stats = equipped_item[? "Stats"];
	show_debug_message("Updating: " + name);
}
// Resize the grid, add 1 for name
var gridw = ds_map_size(stats) + ds_map_size(buffs) + 1;
ds_grid_resize(_text,gridw,3);

// Set the name
_text[# 0,0] = name;
_text[# 0,1] = "";
_text[# 0,2] = c_white;

var i = 1;
for (var j = 0; j<array_length_1d(GUI.inv_tooltip_stats); j++) {
	var _stat = GUI.inv_tooltip_stats[j];
	if (stats[? _stat] != undefined) {
		_text[# i,0] = _stat + ": " + string(stats[? _stat]);
		_text[# i,1] = "";
		_text[# i,2] = c_white;
		i++;
	}
}
var key = ds_map_find_first(buffs);
for (var k = 0; k<ds_map_size(buffs); k++) {
	_text[# i,0] = key + ": " + string(buffs[? key]);
	_text[# i,1] = "";
	_text[# i,2] = c_white;
	key = ds_map_find_next(buffs,key);
	i++;
}
