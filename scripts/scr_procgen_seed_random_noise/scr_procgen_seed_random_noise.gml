/// @param grid_id
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param chance_to_start_alive

var grid = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var chance_to_start_alive = argument5;

for (var xx=x1; xx<x2; xx++) {
	for (var yy=y1; yy<y2; yy++) {
		if scr_chance(chance_to_start_alive) grid[# xx,yy] = true;
	}
}

return grid;