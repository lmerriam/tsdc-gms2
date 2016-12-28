/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Column";
properties[? "Spell Script"] = scr_spell_column;

// Roll stats
stats[? "Spell Damage"] = irandom_range(8,12);
stats[? "Spell Knockback"] = irandom_range(10,20);
stats[? "Cooldown"] = 3;
stats[? "Fatigue"] = 5;

