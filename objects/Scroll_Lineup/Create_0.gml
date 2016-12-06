/// Init spell and stats
event_inherited();

// Roll for type
name = "Lineup";
script = scr_spell_lineup;

// Roll for stats (eventually make this conditional based on spell)
stats[? "Spell Damage"] = 0;
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 5;
stats[? "Fatigue"] = 5;

