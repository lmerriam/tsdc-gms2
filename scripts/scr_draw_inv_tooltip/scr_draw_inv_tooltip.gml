///scr_draw_inv_tooltip(props,xx,yy,width)
var item = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];

var item_stats = item[? "Stats"];
var item_buffs = item[? "Buffs"];
var item_text = item[? "Text"];

// Get some dimensions
// we add 1 to account for the name
var line_count = inv_tooltip_line_count;
var padding = inv_tooltip_padding;


// Draw tooltip box
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect_ext( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, 2, 2, false);
draw_set_color(c_yellow);
draw_roundrect_ext( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, 2, 2, true);

// Draw the tooltip text
draw_set_color(c_white);
draw_set_alpha(1);

for (var i=0; i<line_count; i++) {
	    var xcur = inv_tooltip_x+padding;
	    var ycur = inv_tooltip_y+(inv_tooltip_line_height*i)+padding;
		// Set colors
		var text = item_text[# i,0] + " " + item_text[# i,1];
		var color = item_text[# i,2];
	    draw_text_color(xcur, ycur, text, color, color, color, color, 1);
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
    draw_text(eqp_btn_x1 + (eqp_btn_x2-eqp_btn_x1)/2,eqp_btn_y1+10,"EQUIP");
}

// Reset stuff
draw_set_halign(fa_left);
draw_set_color(c_white);
