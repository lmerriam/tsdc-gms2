/// @param room_id
/// @param subroom_id

var room_id = argument0;
var subroom_id = argument1;

var subroom_index = ds_map_find_value(global.overworld_locations[? room_id],"subrooms");

if (subroom_index[? subroom_id] != undefined) {
	return true;
} else {
	return false;
}