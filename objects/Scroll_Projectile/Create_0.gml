/// Init spell and stats
event_inherited();

// Roll for type
name = "Projectile";
script = scr_spell_projectile;

// Roll for stats (eventually make this conditional based on spell)
stats[? "Spell Damage"] = irandom_range(5,10);
stats[? "Spell Knockback"] = irandom_range(5,20);
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 3;

