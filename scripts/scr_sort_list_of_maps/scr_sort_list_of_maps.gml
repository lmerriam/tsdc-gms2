/// @param list
/// @param sort_dimension

var list = argument0;
var dimension = argument1;

var complete = false;
while (!complete) {
	complete = true;
	for (var i=0; i<ds_list_size(list)-1; i++) {
		if (i==0) complete = true;
		var map1 = list[| i];
		var map2 = list[| i+1];
		var value1 = map1[? dimension];
		var value2 = map2[? dimension];
	
		if value1 > value2 {
			list[| i] = map2;
			list[| i+1] = map1;
			complete = false;
		}
	}
}