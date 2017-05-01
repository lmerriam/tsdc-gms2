/// Draw collisions and lines
var dir = global.mousedir + random_range(-aim_vary,aim_vary);
var range = 200;
var targetx = x + lengthdir_x(range, dir);
var targety = y + lengthdir_y(range, dir);

var victim = scr_hitscan(x, y, targetx, targety, Enemy_Parent, false, true);

if (victim != noone) {
	// Damage victim
	// TODO: make scr_damage, scr_damage_instance, scr_blood, etc
    //victim.stats[? "Health"] -= damage;
	scr_damage(victim,damage);
	
	// Transfer buffs to effects
	scr_confer_effects(victim.properties,scr_get_gem());
	
	// Knockback the victim
    scr_knockback(Player, victim, scr_weapon_stat("Knockback"));

    // Draw bullet to target
    draw_line_width(x, y, x+lengthdir_x(distance_to_object(victim),dir), y+lengthdir_y(distance_to_object(victim),dir), 1);

    // Draw blood
    part_particles_create(global.particles_below, victim.x, victim.y, global.blood_particles, 10);

    // Screen shake
    global.screen_shake += 2;

} else {
    draw_line_width(x, y, targetx, targety, 1);
}

