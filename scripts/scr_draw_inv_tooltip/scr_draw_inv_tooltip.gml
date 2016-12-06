///scr_draw_inv_tooltip(text,xx,yy,width)
var text = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];

var line_count = array_height_2d(text);

var padding = inv_tooltip_padding;

// Draw tooltip box
draw_set_colour(c_black);
draw_set_alpha(.5);
draw_roundrect_ext( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, 2, 2, false);
draw_set_colour(c_yellow);
draw_roundrect_ext( inv_tooltip_x, inv_tooltip_y, inv_tooltip_x+inv_tooltip_width, inv_tooltip_y+inv_tooltip_height, 2, 2, true);

draw_set_colour(c_white);
draw_set_alpha(1);
for (i=0;i<line_count;i++) {
    var xcur = inv_tooltip_x+padding;
    var ycur = inv_tooltip_y+(inv_tooltip_line_height*i)+padding;
    
    // Draw current line of text
    draw_set_colour(text[i,2]);
    var finaltext = text[i,0] + " " + text[i,1];
    draw_text_transformed(xcur, ycur, string_hash_to_newline(finaltext), 1, 1, 0);
}

draw_set_colour(c_white);

// Draw de eqp button
if (eqp_btn) {
    draw_set_colour(c_black);
    draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2+4,false);
    draw_set_colour(c_yellow);
    draw_roundrect(eqp_btn_x1,eqp_btn_y1,eqp_btn_x2,eqp_btn_y2,false);
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(eqp_btn_x1 + (eqp_btn_x2-eqp_btn_x1)/2,eqp_btn_y1+10,string_hash_to_newline("EQUIP"));
}

// Reset stuff
draw_set_halign(fa_left);
draw_set_colour(c_white);
