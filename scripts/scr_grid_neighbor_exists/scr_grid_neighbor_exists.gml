/// @param grid
/// @param value_to_check_for
/// @param xx
/// @param yy

var grid = argument0;
var value_to_check_for = argument1;
var xx = argument2;
var yy = argument3;
			
// Iterate through neighbors and check
for (var i=xx-1; i<=xx+1; i++) {
	for (var j=yy-1; j<=yy+1; j++) {
		var neighbor = grid[# i,j];
		if (neighbor == value_to_check_for and !(i==xx and j==yy)) return true;
	}
}

return false;