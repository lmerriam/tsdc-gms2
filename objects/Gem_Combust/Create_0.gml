/// Init gem
event_inherited();

image_blend = c_orange;

var combust = ds_map_create();
combust[? "Duration"] = irandom_range(5,10) * room_speed;
combust[? "Damage"] = irandom_range(3,7);
buffs[? "Combust"] = combust;

// Set up properties
properties[? "Name"] = "Combustible gem";
properties[? "Buffs"] = buffs;