///scr_tile_collision(x,y)
//TODO: maybe need to delete this whole script if never used
var xx = scr_tile_coord(argument0);
var yy = scr_tile_coord(argument1);

return global.collision_tiles[# xx,yy];
