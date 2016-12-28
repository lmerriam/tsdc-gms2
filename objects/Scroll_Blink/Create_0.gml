/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Blink";
properties[? "Spell Script"] = scr_spell_blink;

// Roll stats
stats[? "Spell Damage"] = irandom_range(3,8);
stats[? "Spell Knockback"] = irandom_range(20,25);
stats[? "Cooldown"] = 3;
stats[? "Fatigue"] = 10;

