///scr_attack_shotgun
var weapon = scr_get_weapon();
repeat(3) {
	scr_bullet(x,y,scr_weapon_stat("Damage"),15,weapon[? "Buffs"]);
}
