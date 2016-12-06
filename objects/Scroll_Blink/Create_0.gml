/// Init spell and stats
event_inherited();

// Roll for type
name = "Blink";
script = scr_spell_blink;

// Roll for stats (eventually make this conditional based on spell)
stats[? "Spell Damage"] = irandom_range(3,8);
stats[? "Spell Knockback"] = irandom_range(20,25);
stats[? "Cooldown"] = 3;
stats[? "Fatigue"] = 10;

