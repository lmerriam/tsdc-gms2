/// Init equipment stats
event_inherited();

// Name for inventory
name = "Shotgun";

script = scr_attack_shotgun;

// Roll stats
stats[? "Damage"] = irandom_range(6,9);
stats[? "Knocback"] = irandom_range(2,5);
stats[? "Atk Delay"] = 1;

