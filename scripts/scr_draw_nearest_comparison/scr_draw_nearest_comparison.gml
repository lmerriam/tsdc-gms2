///scr_draw_nearest_comparison(props)
var props = argument[0];
var padding = 12;
var width = 200;
var line_height = 24;
var line_count = 2;
var height = line_count*line_height+padding*2;
var xx = 16;
var yy = global.window_height - height - nearest_button_height - 32;
var x2 = xx+width;
var y2 = yy+height;

// TODO: stop calculating all this shit each step

// Draw box
draw_set_color(c_black);
draw_set_alpha(.70);
draw_rectangle_fast(xx+4,yy+4,xx+width-2,yy+(2*line_height)+(2*padding)-2);
draw_set_alpha(1);
scr_draw_9patch(spr_ui_box_2x,0,xx,yy,xx+width,yy+(2*line_height)+(2*padding),6,6,6,6)

// Draw stats
draw_set_font(PixelSmall_12)
//scr_draw_item_stats(nearest_drop.properties,xx,yy,width,height,padding,line_height,scr_get_equipped(props[? "Type"]));

var props = nearest_drop.properties;
draw_set_color(props[? "Rarity color"]);
draw_text(xx+padding, yy+padding, props[? "Name"]);
draw_set_color(c_white);
draw_text(xx+padding, yy+padding+line_height, props[? "Rarity"]);

// Update nearest btn
nearest_button_y1 = yy+(2*line_height)+(3*padding);
nearest_button_y2 = nearest_button_y1 + nearest_button_height;
nearest_button_x1 = xx;
nearest_button_x2 = xx + width;

// Draw nearest btn
//draw_roundrect_color(nearest_button_x1,nearest_button_y1,nearest_button_x2,nearest_button_y2,c_yellow,c_yellow,false);
scr_draw_9patch(spr_button_yellow_x2,0,nearest_button_x1,nearest_button_y1,nearest_button_x2,nearest_button_y2,4,4,4,4);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(nearest_button_x1+width/2,nearest_button_y1+nearest_button_height/2-10,string("PICK UP"));
draw_set_color(c_white)
draw_set_halign(fa_left);
