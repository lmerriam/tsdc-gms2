///scr_draw_tab_btn(button_array)
var btn = argument0;
var x1 = btn[0];
var y1 = btn[1];
var width = btn[2];
var height = btn[3];
var text = btn[4];
var menu = btn[5];

// Draw button rectangle
draw_set_colour(c_black);
draw_rectangle(x1,y1,x1+width,y1+height,false);

// Draw button text
if (menu = global.current_menu) {
    draw_set_colour(c_yellow);
} else {
    draw_set_colour(c_white);;
}
draw_set_halign(fa_middle);
draw_text(x1+(width/2),y1+(height/2)-16,string_hash_to_newline(text));

// Draw underline
if (menu = global.current_menu) {
    draw_line_width(x1,height,x1+width,height,3);
}

// Reset
draw_set_halign(fa_left);
