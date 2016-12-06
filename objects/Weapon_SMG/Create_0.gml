/// Init equipment stats
event_inherited();

// Name for inventory
name = "SMG";

// Script to execute the attack
script = scr_attack_smg;

// Roll stats
stats[? "Damage"] = irandom_range(1,1);
stats[? "Knockback"] = irandom_range(2,3);
stats[? "Atk Delay"] = .2;

