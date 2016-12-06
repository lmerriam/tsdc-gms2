/// Init equipment stats
event_inherited();

// Name for inventory
name = "Bomb";
script = scr_attack_bomb;

// Roll stats
stats[? "Damage"] = irandom_range(5,8);
stats[? "Knockback"] = irandom_range(10,20);
stats[? "Atk Delay"] = 1.5;

