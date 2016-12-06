/// Init equipment stats
event_inherited();

// Name for inventory
name = "Pistol";

// Script to execute the attack
script = scr_attack_pistol;

// Roll stats
stats[? "Damage"] = irandom_range(3,5);
stats[? "Knockback"] = irandom_range(5,8);
stats[? "Atk Delay"] = 1;

