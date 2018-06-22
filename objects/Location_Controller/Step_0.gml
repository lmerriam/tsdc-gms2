/// @description Insert description here

//var size = ds_list_size(global.locations);
//for (var i = 0; i<size; i++) {
//	var location = global.locations[| i];
//	var dis = point_distance(Player.x,Player.y,location.x,location.y);
//	if (dis < 512) {
//		location.discovered = true;
//	}
//}

var nearby_locations = global.active_chunk_registry[? "location"];
if (nearby_locations != undefined) {
	for (var i = 0; i<ds_list_size(nearby_locations); i++) {
		var location = nearby_locations[| i];
		var dis = point_distance(Player.x,Player.y,location.x,location.y);
		if (dis < 512) {
			location.discovered = true;
		}
	}
}