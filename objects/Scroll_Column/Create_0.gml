/// Init spell and stats
event_inherited();

// Roll for type
name = "Column";
script = scr_spell_column;

// Roll for stats
stats[? "Spell Damage"] = irandom_range(8,12);
stats[? "Spell Knockback"] = irandom_range(10,20);
stats[? "Cooldown"] = 3;
stats[? "Fatigue"] = 5;

