///scr_attack_hammer(creator)

var gem = scr_get_gem();
var buffs = gem[? "Buffs"];
scr_damage(x,y,Attack_Hammer,Player.id,Player.stats[? "Damage"],scr_weapon_stat("Knockback"),buffs);
