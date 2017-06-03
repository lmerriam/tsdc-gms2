///scr_draw_nearest_comparison(props)
var props = argument[0];
var xx = 16;
var yy = menu_btn[3] + 16;
var padding = 12;
var width = 200;
var line_height = 24;
var line_count = ds_map_size(props[? "Stats"]) + ds_map_size(props[? "Buffs"]) + 2;
var height = line_count*line_height+padding*2;
var x2 = xx+width;
var y2 = yy+height;

// Draw box
draw_set_color(c_black);
draw_set_alpha(.75);
draw_rectangle_fast(xx,yy,xx+width,yy+line_count*line_height+padding*2);
draw_set_alpha(1);

// Draw stats
draw_set_font(PixelSmall_12)
scr_draw_item_stats(nearest_drop.properties,xx,yy,width,height,padding,line_height,scr_get_equipped(props[? "Type"]));

// Update nearest btn
nearest_button_y1 = yy+(line_height*line_count)+padding+16;
nearest_button_y2 = nearest_button_y1 + nearest_button_height;
nearest_button_x1 = xx;
nearest_button_x2 = xx + width;

// Draw nearest btn
draw_roundrect_color(nearest_button_x1,nearest_button_y1,nearest_button_x2,nearest_button_y2,c_yellow,c_yellow,false);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(nearest_button_x1+width/2,nearest_button_y1+nearest_button_height/2-10,string("Pick up"));
draw_set_color(c_white)
draw_set_halign(fa_left);
