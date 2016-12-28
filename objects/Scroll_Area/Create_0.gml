/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Area of Effect";
properties[? "Spell Script"] = scr_spell_area;

// Roll stats
stats[? "Spell Damage"] = irandom_range(3,8);
stats[? "Spell Knockback"] = irandom_range(10,20);
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 3;

