///scr_draw_nearest_comparison(text,x_offset,y_offset,width)
var text = argument[0];
var x_offset = argument[1];
var y_offset = argument[2];
var width = argument[3];

var line_count = array_height_2d(text);

var padding = 3;
var line_height = 20;

draw_set_color(c_black);
draw_set_alpha(.75);
draw_rectangle(x_offset,y_offset,x_offset+width,y_offset+line_count*line_height+padding*2, false);

draw_set_color(c_white);
draw_set_alpha(1);
for (i=0;i<line_count;i++) {
    draw_set_color(text[i,2]);
    var finaltext = text[i,0] + " " + text[i,1];
    draw_text_transformed(x_offset+padding,y_offset+(line_height*i)+padding, string_hash_to_newline(finaltext), 1, 1, 0);
}

nearest_button_y1 = y_offset+(line_height*line_count)+padding+16;
nearest_button_y2 = nearest_button_y1 + nearest_button_height;
nearest_button_x1 = x_offset;
nearest_button_x2 = x_offset + width;
// Updated dimensions
nearest_btn[0] = x_offset;
nearest_btn[1] = y_offset+(line_height*line_count)+padding+16;
nearest_btn[2] = width;

draw_rectangle_color(nearest_button_x1,nearest_button_y1,nearest_button_x2,nearest_button_y2,c_green,c_green,c_green,c_green,false);
//scr_draw_btn(nearest_btn);

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(nearest_button_x1+width/2,nearest_button_y1+nearest_button_height/2-10,string_hash_to_newline("Pick up"));
draw_set_halign(fa_left);
