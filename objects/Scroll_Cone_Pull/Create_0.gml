/// Init spell and stats
event_inherited();

// Roll for type
name = "Pull";
script = scr_spell_cone_pull;

// Roll for stats (eventually make this conditional based on spell)

// Damage
stats[? "Spell Damage"] = irandom_range(5,10);
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 5;

