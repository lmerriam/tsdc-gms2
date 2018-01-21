/// @description create a bullet
/// @param x
/// @param y
/// @param damage
/// @param aim_vary
/// @param buffs

var xx = argument0;
var yy = argument1;
var damage = argument2;
var aim_vary = argument3;
var buffs = argument4;

//show_debug_message("Bullet damage: " + string(damage));

var bullet = instance_create_layer(xx, yy, "entities", Attack_Bullet);
bullet.damage = damage;
bullet.aim_vary = aim_vary;
bullet.buffs = buffs;

return bullet;