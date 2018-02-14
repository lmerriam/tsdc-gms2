/// Init door
event_inherited();
scr_register_location(id,spr_location);
scr_register_interactable(id);

location_icon = spr_quest_icon_door;

properties[? "New X"] = 0;
properties[? "New Y"] = 0;
properties[? "New Room"] = 0;