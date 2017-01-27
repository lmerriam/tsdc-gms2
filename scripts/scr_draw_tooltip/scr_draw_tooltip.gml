///scr_draw_tooltip(text,x_offset,y_offset, width)
var _text = argument[0];
var x_offset = argument[1];
var y_offset = argument[2];
var width = argument[3];

var line_count = array_length_1d(text);

var padding = 3;

draw_rectangle_fast( x+x_offset, y+y_offset, x+x_offset+width, y+y_offset+line_count*8+padding);

for (i=0;i<line_count;i++) { 
    
    draw_text_transformed(x+x_offset+padding, y+y_offset+(8*i)+padding, string_hash_to_newline(_text[i]), .3, .3, 0);
}
