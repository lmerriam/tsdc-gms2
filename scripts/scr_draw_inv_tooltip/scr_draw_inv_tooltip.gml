///scr_draw_inv_tooltip(props,xx,yy,width)
var item = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];

var item_stats = item[? "Stats"];
var item_buffs = item[? "Buffs"];
var type = item[? "Type"];
show_debug_message("Type: " + type);
show_debug_message("Item stats map index: " + string(item_stats));

// Get some dimensions
var line_count = ds_map_size(item_stats);
var padding = inv_tooltip_padding;

// Identify the equipped item to compare to
var equipped_item;
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

// Draw tooltip box
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect_ext( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, 2, 2, false);
draw_set_color(c_yellow);
draw_roundrect_ext( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, 2, 2, true);

// Draw the tooltip text
draw_set_color(c_white);
draw_set_alpha(1);
var j;
for (var stat=0; stat<array_length_1d(inv_tooltip_stats); stat++) {
	if (!is_undefined(item_stats[? stat])) {
	    var xcur = inv_tooltip_x+padding;
	    var ycur = inv_tooltip_y+(inv_tooltip_line_height*j)+padding;
    
		var text = stat + ": " + item_stats[? stat];
	    draw_text_transformed(xcur, ycur, text, 1, 1, 0);
		j++;
	}
}

draw_set_color(c_white);

// Draw de eqp button
if (eqp_btn) {
    draw_set_color(c_black);
    draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2+4,false);
    draw_set_color(c_yellow);
    draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2,false);
    draw_set_halign(fa_center);
    draw_set_color(c_black);
    draw_text(eqp_btn_x1 + (eqp_btn_x2-eqp_btn_x1)/2,eqp_btn_y1+10,string_hash_to_newline("EQUIP"));
}

// Reset stuff
draw_set_halign(fa_left);
draw_set_color(c_white);
