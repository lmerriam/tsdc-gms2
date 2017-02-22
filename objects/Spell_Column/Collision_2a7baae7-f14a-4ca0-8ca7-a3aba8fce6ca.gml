/// Damage all life forms
event_inherited();

if (other.id != creator) { //Make sure the damage object doesn't damage the player
    scr_damage_other(scr_get_instance_stat(Player,"Spell Damage"));
    scr_knockback(self, other, scr_spell_stat("Spell Knockback"));
}

