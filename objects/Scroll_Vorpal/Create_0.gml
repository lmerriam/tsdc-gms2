/// Init spell and stats
event_inherited();

// Roll for type
name = "Vorpal";
script = scr_spell_vorpal;

// Roll for stats (eventually make this conditional based on spell)
stats[? "Spell Damage"] = irandom_range(1,2);
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 6;
stats[? "Fatigue"] = 10;

