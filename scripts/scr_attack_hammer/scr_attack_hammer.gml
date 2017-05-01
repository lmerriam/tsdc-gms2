///scr_attack_hammer(creator)

var gem = scr_get_gem();
var buffs = gem[? "Buffs"];
scr_damage_obj(x,y,Attack_Hammer,Player.id,scr_get_instance_stat(Player,"Damage"),scr_weapon_stat("Knockback"),buffs);
