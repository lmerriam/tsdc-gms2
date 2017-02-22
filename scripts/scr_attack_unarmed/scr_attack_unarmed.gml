///scr_attack_blade(creator)
var dir = point_direction(x,y,mouse_x,mouse_y)
var target_x = lengthdir_x(attack_range,dir);
var target_y = lengthdir_y(attack_range,dir);

var gem = scr_get_gem();
var buffs = gem[? "Buffs"];
scr_damage(x+target_x,y+target_y,Attack_Radius,Player.id,scr_get_instance_stat(Player,"Damage"),scr_weapon_stat("Knockback"),buffs);
