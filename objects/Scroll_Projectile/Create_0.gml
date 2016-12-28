/// Init spell and stats
event_inherited();

// Set up properties
properties[? "Name"] = "Projectile";
properties[? "Spell Script"] = scr_spell_projectile;

// Stats
stats[? "Spell Damage"] = irandom_range(5,10);
stats[? "Spell Knockback"] = irandom_range(5,20);
stats[? "Cooldown"] = 2;
stats[? "Fatigue"] = 3;

