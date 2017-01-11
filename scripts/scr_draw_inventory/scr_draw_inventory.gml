///scr_draw_inventory(ds_grid,slot_width,offset_left,offset_top)
var slots = argument[0];
var slot_width = argument[1];
var offset_left = argument[2];
var offset_top = argument[3];

// Get grid height and width
var grid_height = ds_grid_height(slots);
var grid_width = ds_grid_width(slots);
var width = grid_width*slot_width;
var height = grid_height*slot_width;

// Draw rounded rectangle
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect_ext(offset_left,offset_top,offset_left+width,offset_top+height,2,2,false);
// Draw outline
draw_set_alpha(1);
draw_roundrect_ext(offset_left,offset_top,offset_left+width,offset_top+height,2,2,true);

// Iterate over grid and draw slots
for (column = 0; column < grid_width; column++) {
    for (row = 0; row < grid_height; row++) {
        var x1 = column * slot_width + offset_left;
        var y1 = row * slot_width + offset_top;
        var x2 = x1 + slot_width;
        var y2 = y1 + slot_width;
        
        scr_draw_inv_slot(x1,y1,x2,y2,slots[# column,row]);
    }
}
