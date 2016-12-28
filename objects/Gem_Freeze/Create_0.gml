/// Init gem
event_inherited();

image_blend = c_aqua;

// Set up buffs
buffs[? "freeze_duration"] = irandom_range(5,10) * room_speed;
buffs[? "freeze_slow"] = random_range(.3, .5);

// Set up properties
properties[? "Name"] = "Frozen gem";
properties[? "Buffs"] = buffs;