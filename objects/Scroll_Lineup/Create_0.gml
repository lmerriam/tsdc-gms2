/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Lineup";
properties[? "Spell Script"] = scr_spell_lineup;

// Roll stats
stats[? "Spell Damage"] = 0;
stats[? "Spell Knockback"] = 0;
stats[? "Cooldown"] = 5;
stats[? "Fatigue"] = 5;
