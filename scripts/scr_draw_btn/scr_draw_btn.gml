///scr_draw_btn(btn_array,btn_color,txt_color)
var btn = argument0;
var color = argument1;
var textcolor = argument2;
var x1 = btn[0];
var y1 = btn[1];
var width = btn[2];
var height = btn[3];
var text = btn[4];
var x2 = btn[0]+width;
var y2 = btn[1]+height;

draw_set_color(c_black);
draw_roundrect(x1,y1,x2,y2+4,false);
draw_set_color(color);
draw_roundrect(x1,y1,x2,y2,false);
draw_set_halign(fa_center);
draw_set_color(textcolor);
draw_text(x1 + width/2,y1+height/2-10,string_hash_to_newline(text));

draw_set_color(c_white);
draw_set_halign(fa_left);
