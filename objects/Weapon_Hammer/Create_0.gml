/// Init equipment stats
event_inherited();

// Set up properties
properties[? "Name"] = "Hammer";
properties[? "Attack Script"] = scr_attack_hammer;

// Roll stats
stats[? "Damage"] = irandom_range(2,3);
stats[? "Knockback"] = 30;
stats[? "Atk Delay"] = 1;
