///scr_draw_inv_tooltip(props,xx,yy,width,height,padding,line_height,compare_to)
var props = argument[0];
var xx = argument[1];
var yy = argument[2];
var width = argument[3];
var height = argument[4];
var padding = argument[5];
var line_height = argument[6];
var compare_to = argument[7];

// Draw the tooltip box
draw_rectangle_fast(xx,yy,xx+width,yy+height);

// Draw the stats
draw_set_halign(fa_left);
scr_draw_item_stats(props,xx,yy,width,height,padding,line_height,compare_to);
