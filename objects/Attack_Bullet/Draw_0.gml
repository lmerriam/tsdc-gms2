/// Draw collisions and lines
var dir = global.aim_dir + random_range(-aim_vary,aim_vary);
var range = 200;
var targetx = global.weapon_origin_x + lengthdir_x(range, dir);
var targety = global.weapon_origin_y + lengthdir_y(range, dir);

var victim = scr_hitscan(global.weapon_origin_x, global.weapon_origin_y, targetx, targety, Enemy_Parent, false, true);

if (victim != noone) {
	// Damage victim
	// TODO: make scr_damage, scr_damage_instance, scr_blood, etc
    //victim.stats[? "Health"] -= damage;
	scr_damage(victim,damage);
	
	// Transfer buffs to effects
	var weapon = scr_get_weapon();
	scr_confer_effects(victim.properties[? "Effects"],weapon[? "Buffs"]);
	
	// Knockback the victim
    scr_knockback(Player, victim, scr_weapon_stat("Knockback"));

    // Draw bullet to target
    draw_line_width(global.weapon_origin_x, global.weapon_origin_y, x+lengthdir_x(distance_to_object(victim),dir), y+lengthdir_y(distance_to_object(victim),dir), 1);

    // Draw blood
    part_particles_create(global.particles_below, victim.x, victim.y, global.blood_particles, 10);

    // Screen shake
    global.screen_shake += 1;

} else {
    draw_line_width(global.weapon_origin_x, global.weapon_origin_y, targetx, targety, 1);
}

