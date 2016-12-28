/// Init equipment stats
event_inherited();

// Set up properties
properties[? "Name"] = "Shotgun";
properties[? "Attack Script"] = scr_attack_shotgun;

// Roll stats
stats[? "Damage"] = irandom_range(6,9);
stats[? "Knockback"] = irandom_range(2,5);
stats[? "Atk Delay"] = 1;