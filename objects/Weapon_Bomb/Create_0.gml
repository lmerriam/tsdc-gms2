/// Init equipment stats
event_inherited();

// Set properties
properties[? "Name"] = "Bomb";
properties[? "Attack Script"] = scr_attack_bomb;

// Roll stats
stats[? "Damage"] = irandom_range(5,8);
stats[? "Knockback"] = irandom_range(10,20);
stats[? "Atk Delay"] = 1.5;

