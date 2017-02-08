///scr_draw_item_stats(props,x,y,width,height,padding,line_height,compare_to)
var props = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];
var height = argument[4];
var padding = argument[5];
var line_height = argument[6];
var compare_to = argument[7];

var stats = props[? "Stats"]
var buffs = props[? "Buffs"]

var name = props[? "Name"];
var type = props[? "Type"];

// Identify the equipped item to compare to
var compare_to_stats = noone;
if (compare_to != noone) {
	compare_to_stats = compare_to[? "Stats"];
}

// Set up x position for text of tooltip
var xcur = xx + padding;

// Draw the name
// TODO: should "names" be in stats? types can stay in properties
draw_text(xcur, yy+padding, name);

var i = 1;
for (var j = 0; j<array_length_1d(GUI.inv_tooltip_stats); j++) {
	var _stat = GUI.inv_tooltip_stats[j];
	var stat_value = stats[? _stat];
	if (stat_value != undefined) {
		var ycur = yy + padding + i*line_height;
		var text = _stat + ": " + string(stat_value);
		if (compare_to != noone) {
			var compare_stat_value = compare_to_stats[? _stat];
			if (stat_value > compare_stat_value) draw_set_color(c_green);
			else if (stat_value < compare_stat_value) draw_set_color(c_red);
		}
		draw_text(xcur, ycur, text);
		i++;
	}
	draw_set_color(c_white);
}
// Draw the buffs
var key = ds_map_find_first(buffs);
for (var k = 0; k<ds_map_size(buffs); k++) {
	var ycur = yy + padding + i*line_height;
	var text = key + ": " + string(buffs[? key]);
	draw_text(xcur, ycur, text);
	key = ds_map_find_next(buffs,key);
	i++;
}