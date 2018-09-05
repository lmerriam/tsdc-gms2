var map1 = argument0;
var map2 = argument1;
var map1_size = ds_map_size(map1);
var map2_size = ds_map_size(map2);

if (map1_size == map2_size) { // Do a quick check for equivalent size
	var equivalent = true;
	
	var key = ds_map_find_first(map1);
	for (var i=0; i=map1_size; i++) {
		if (map2[? key] == undefined) return false;
		key = ds_map_find_next(map1,key);
	}
	return true;
} else {
	return false;
} 