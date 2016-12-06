/// Init spell and stats
event_inherited();

// Roll for type
name = "Push";

script = scr_spell_cone;

// Damage
stats[? "Spell Damage"] = irandom_range(5,10);
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 5;

