///scr_attack_pistol
var bullet = instance_create_layer(x, y, "entities", Attack_Bullet);
bullet.creator = Player.id;
bullet.damage = Player.stats[? "Damage"];
