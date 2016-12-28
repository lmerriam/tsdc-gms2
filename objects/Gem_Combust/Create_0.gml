/// Init gem
event_inherited();

image_blend = c_orange;

buffs[? "combust_duration"] = irandom_range(5,10) * room_speed;
buffs[? "combust_damage"] = irandom_range(3,7);

// Set up properties
properties[? "Name"] = "Combustible gem";
properties[? "Buffs"] = buffs;