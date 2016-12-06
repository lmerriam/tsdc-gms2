///scr_draw_inv_slot(x1,y1,x2,y2,obj)
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var obj = argument[4];

if (obj = selected_item and obj != noone) {
    draw_set_colour(c_yellow);
    draw_roundrect_ext(x1+2,y1+2,x2-2,y2-2,2,2,true);
    draw_set_colour(c_white);
}

if(obj != noone) {
    draw_sprite_ext(obj.sprite_index, 0,x1+(slot_width/2),y1+(slot_width/2),3,3,45,c_white,1);
}
