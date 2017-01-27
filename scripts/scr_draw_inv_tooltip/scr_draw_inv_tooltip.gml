///scr_draw_inv_tooltip(props,xx,yy,width)
var props = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];
var height = inv_tooltip_height;

var stats = props[? "Stats"]
var buffs = props[? "Buffs"]

var name = props[? "Name"];
var type = props[? "Type"];

// Identify the equipped item to compare to
var compare_stats = noone;
if (inv_tooltip_compare_item != noone) {
	compare_stats = inv_tooltip_compare_item[? "Stats"];
}

// Draw the tooltip box
draw_rectangle_fast(xx,yy,xx+width,yy+height);

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
		if (inv_tooltip_compare_item != noone) {
			var compare_stat_value = compare_stats[? _stat];
			if (stat_value > compare_stat_value) draw_set_color(c_green);
			else if (stat_value < compare_stat_value) draw_set_color(c_red);
		}
		draw_text(xcur, ycur, text);
		i++;
	}
	draw_set_color(c_white);
}
var key = ds_map_find_first(buffs);
for (var k = 0; k<ds_map_size(buffs); k++) {
	var ycur = yy + inv_tooltip_padding + i*inv_tooltip_line_height;
	var text = key + ": " + string(buffs[? key]);
	draw_text(xcur, ycur, text);
	key = ds_map_find_next(buffs,key);
	i++;
}

// Draw equip button
if (eqp_btn) {
	draw_set_color(c_black);
	draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2+4,false);
	draw_set_color(c_yellow);
	draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2,false);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(eqp_btn_x1 + (eqp_btn_x2-eqp_btn_x1)/2,eqp_btn_y1+10,"EQUIP");
}
