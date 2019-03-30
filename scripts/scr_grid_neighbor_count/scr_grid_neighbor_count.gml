/// @param grid
/// @param value_to_check_for
/// @param xx
/// @param yy

var grid = argument0;
var value_to_check_for = argument1;
var xx = argument2;
var yy = argument3;
//var grid_width = ds_grid_width(grid);
//var grid_height = ds_grid_height(grid);

// Count living neighbors
//var neighbor_count = 0;
//for (var i=xx-1; i<=xx+1; i++) {
//	// Check that it's a valid grid x coord
//	if (i>=0 and i<grid_width) {
//		for (var j=yy-1; j<=yy+1; j++) {
//			// Check that it's a valid grid y coord
//			if (j>=0 and j<grid_height) {
//				var neighbor = grid[# i,j];
//				if (neighbor == value_to_check_for and !(i==xx and j==yy)) neighbor_count++;
//			}
//		}
//	}
//}
var sum = ds_grid_get_sum(grid,xx-1,yy-1,xx+1,yy+1);
var neighbor_count = sum - grid[# xx,yy];
return neighbor_count;