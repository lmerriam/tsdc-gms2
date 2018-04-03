/// Init door
event_inherited();
scr_register_location(id,spr_location);
scr_register_interactable(id);

location_icon = spr_quest_icon_door;

global.entrances[? room_get_name(new_room)] = id;