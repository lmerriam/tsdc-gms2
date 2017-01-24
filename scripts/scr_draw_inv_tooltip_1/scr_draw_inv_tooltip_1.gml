///scr_draw_inv_tooltip(props,xx,yy,width)
var props = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];

var stats = props[? "Stats"]
var buffs = props[? "Buffs"]

var name = props[? "Name"];
var type = props[? "Type"];

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
var equipped_stats = noone;
if (equipped_item != noone) {
	var equipped_stats = equipped_item[? "Stats"];
}
// Resize the grid, add 1 for name
var line_count = ds_map_size(stats) + ds_map_size(buffs) + 1;

// Draw the name
// TODO: should "names" be in stats? types can stay in properties
draw_text(xx, yy, name);

var i = 1;
var xcur = xx + inv_tooltip_padding;
for (var j = 0; j<array_length_1d(GUI.inv_tooltip_stats); j++) {
	var _stat = GUI.inv_tooltip_stats[j];
	var stat_value = stats[? _stat];
	if (stat_value != undefined) {
		var ycur = yy + inv_tooltip_padding + i*inv_tooltip_line_height;
		var text = _stat + ": " + string(stat_value);
		draw_text(xcur, ycur, text);
		i++;
	}
}
var key = ds_map_find_first(buffs);
for (var k = 0; k<ds_map_size(buffs); k++) {
	var ycur = yy + inv_tooltip_padding + i*inv_tooltip_line_height;
	var text = key + ": " + string(buffs[? key]);
	draw_text(xcur, ycur, text);
	key = ds_map_find_next(buffs,key);
	i++;
}
