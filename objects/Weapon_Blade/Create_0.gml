/// Init equipment stats
event_inherited();

// Set up properties
properties[? "Name"] = "Blade";
properties[? "Attack Script"] = scr_attack_blade;

// Roll stats
stats[? "Damage"] = irandom_range(3,5);
stats[? "Knockback"] = 10;
stats[? "Atk Delay"] = 1;

