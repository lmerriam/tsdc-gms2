/// Damage all life forms
event_inherited();

if (other.id != creator) { //Make sure the damage object doesn't damage the player
    scr_damage_other(Player.stats[? "Spell Damage"]);
    scr_knockback(self, other, scr_spell_stat("Spell Knockback"));
}

