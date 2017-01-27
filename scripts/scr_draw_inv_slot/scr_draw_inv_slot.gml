///scr_draw_inv_slot(x1,y1,x2,y2,props)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var props = argument[4];

if (props = selected_item and props != noone) {
    //draw_set_color(c_yellow);
    //draw_roundrect_ext(x1+2,y1+2,x2-2,y2-2,2,2,true);
    //draw_set_color(c_white);
}

if(props != noone) {
    draw_sprite_ext(props[? "Sprite"], 0,x1+(slot_width/2),y1+(slot_width/2),3,3,45,c_white,1);
}
