/// Damage enemy
scr_damage_other(2);
scr_knockback(Player, other, 10);
/// backfire
scr_knockback(other, self, 5);



