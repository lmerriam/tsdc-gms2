/// @description Insert description here

var size = ds_list_size(global.locations);
for (var i = 0; i<size; i++) {
	var location = global.locations[| i];
	var dis = point_distance(Player.x,Player.y,location.x,location.y);
	if (dis < 512) {
		location.discovered = true;
	}
}