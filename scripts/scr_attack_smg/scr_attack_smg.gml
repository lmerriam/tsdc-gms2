///scr_attack_pistol
var bullet = instance_create_layer(x, y, "entities", Attack_Bullet);
bullet.damage = scr_get_instance_stat(Player,"Damage");
bullet.aim_vary = 10;
// @TODO: make a bullet script (this is all repeated for shotgun/smg rn)
// @TODO: maybe buffs coming from player should not be hardcoded
bullet.buffs = Player.properties[? "Buffs"];