///scr_attack_shotgun

repeat(3) {
    var bullet = instance_create(x, y, Attack_Bullet);
    bullet.creator = Player.id;
    bullet.damage = Player.stats[? "Damage"]/3;
    bullet.aim_vary = 15;
}
