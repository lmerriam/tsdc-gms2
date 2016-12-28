/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Vorpal";
properties[? "Spell Script"] = scr_spell_vorpal;

// Roll stats
stats[? "Spell Damage"] = irandom_range(1,2);
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 6;
stats[? "Fatigue"] = 10;

