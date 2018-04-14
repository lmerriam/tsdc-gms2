/// @param room_id
var room_id = argument0;

// @TODO: too many checks for undefined/noone. control input better
if (room_id == "<undefined>" or room_id == undefined or room_id == noone or is_undefined(room_id)) {
	return noone;
} else {
	return global.entrances[? room_id];
}