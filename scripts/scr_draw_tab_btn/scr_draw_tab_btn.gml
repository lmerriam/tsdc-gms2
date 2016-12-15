///scr_draw_tab_btn(button_array)
var btn = argument0;
var x1 = btn[0];
var y1 = btn[1];
var width = btn[2];
var height = btn[3];
var text = btn[4];
var menu = btn[5];

// Draw button rectangle
draw_set_color(c_black);
draw_rectangle(x1,y1,x1+width,y1+height,false);

// Draw button text
if (menu == GUI.menu_step) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_white);;
}
draw_text(x1+(width/2),y1+(height/2)-8,string_hash_to_newline(text));

// Draw underline
if (menu == GUI.menu_step) {
    draw_line_width(x1,height,x1+width,height,3);
}
