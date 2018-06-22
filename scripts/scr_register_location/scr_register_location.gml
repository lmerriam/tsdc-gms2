/// @param inst
var inst = argument0;
var spr = argument1;

ds_list_add(global.locations,inst);
var cx = scr_chunk_coordinate(inst.x);
var cy = scr_chunk_coordinate(inst.y);
scr_chunk_add_record(cx,cy,"location",inst);
discovered = false;
completed = false;

location_icon = spr_location;