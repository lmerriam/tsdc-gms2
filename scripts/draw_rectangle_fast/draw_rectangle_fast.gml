/// draw_rectangle_fast(x1,y1,x2,y2)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

draw_sprite_stretched(spr_black,0,x1,y1,x2-x1,y2-y1);