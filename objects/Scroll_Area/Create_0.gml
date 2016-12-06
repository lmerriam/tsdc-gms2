/// Init spell and stats
event_inherited();

// Roll for type
name = "Area";
script = scr_spell_area;

// Roll for stats (eventually make this conditional based on spell)
stats[? "Spell Damage"] = irandom_range(3,8);
stats[? "Spell Knockback"] = irandom_range(10,20);
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 3;

