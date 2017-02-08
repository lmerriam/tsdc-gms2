///scr_init_inventory(ds_grid,slot_width,offset_left,offset_top)
var grid = argument[0];
var slot_width = argument[1];
var offset_left = argument[2];
var offset_top = argument[3];

// Store the coordinates of the inventory
var x1 = offset_left;
var y1 = offset_top;
var x2 = x1 + ds_grid_width(grid) * slot_width;
var y2 = y1 + ds_grid_height(grid) * slot_width;

var coords;
coords[0] = x1;
coords[1] = y1;
coords[2] = x2;
coords[3] = y2;

return coords;
