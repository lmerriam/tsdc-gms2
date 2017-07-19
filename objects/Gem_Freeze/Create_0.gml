/// Init gem
event_inherited();

image_blend = c_aqua;

// Set up buffs
var freeze = ds_map_create();
freeze[? "Duration"] = irandom_range(5,10) * room_speed;
freeze[? "Slow"] = random_range(.3, .5);
buffs[? "Freeze"] = freeze;

// Set up properties
properties[? "Name"] = "Frozen gem";
properties[? "Buffs"] = buffs;