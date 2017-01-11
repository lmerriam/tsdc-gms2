/// Init equipment stats
event_inherited();

// Set properties
properties[? "Name"] = "Pistol";
properties[? "Attack Script"] = scr_attack_pistol;

// Roll stats
stats[? "Damage"] = irandom_range(3,5);
stats[? "Knockback"] = irandom_range(5,8);
stats[? "Atk Delay"] = 1;
