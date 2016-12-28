/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Push";
properties[? "Spell Script"] = scr_spell_cone;

// Roll stats
stats[? "Spell Damage"] = irandom_range(5,10);
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 5;

