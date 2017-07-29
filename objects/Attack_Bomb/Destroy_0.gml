/// Explode
var gem = scr_get_gem();
var buffs = gem[? "Buffs"];
scr_damage_obj(xprevious,yprevious,Attack_Radius_Medium,Player.id,scr_get_instance_stat(Player,"Damage"),scr_weapon_stat("Knockback"),buffs);