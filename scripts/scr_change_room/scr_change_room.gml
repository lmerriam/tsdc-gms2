/// @param new_room
var new_room = argument0;

var new_room_id = room_get_name(new_room);
var prev_room = room_get_name(room);

global.rm_current = new_room_id;
global.rm_previous = prev_room;

room_goto(new_room);